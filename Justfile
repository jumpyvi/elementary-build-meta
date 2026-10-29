default:
    #!/usr/bin/env bash
    set -xeuo pipefail
    just --choose

do-release:
    #!/usr/bin/env bash
    sudo rm -rf mkosi.output/ && \
    just mkosi -B --debug -ff --workspace-directory=/workspace && \
    sudo just compress-repo
    sudo chown -R "$(id -u):$(id -g)" mkosi.output
    sudo chmod -R u+rwX mkosi.output


_get_arch:
    @systemd-analyze architectures | awk '/native/ {print $1}'

_get_timestamp:
    #!/usr/bin/env bash
    set -euo pipefail
    echo "$(cat ./mkosi.version)"

genkey:
    # Like `mkosi genkey`, but with a fixed-length serial so every build's verity signature is the same size.
    # A random serial is a byte shorter 1 in 256 times, and a shorter signature written over a longer one
    # by an installed system's sysupdate leaves the old tail behind and breaks boot.
    OPENSSL_CONF=/dev/null openssl req -new -x509 -newkey rsa:2048 -keyout mkosi.key -out mkosi.crt \
        -days 730 -subj "/CN=mkosi of root/" -nodes -set_serial "0x40$(openssl rand -hex 19)"

mkosi +subcommand:
    #!/usr/bin/env bash
    mkdir -p {{env_var('HOME')}}/.cache/mkosi-workspace
    sudo mkdir -p "$(pwd)/.cache/"{mkosi,buildstream}

    sudo podman run --rm \
        --runtime=crun \
        --network host \
        --dns 8.8.8.8 \
        --privileged \
        --security-opt label=disable \
        -v $(pwd)/.cache/mkosi:/var/cache/mkosi \
        -v $(pwd)/.cache/buildstream:/root/.cache/buildstream \
        -v /dev:/dev \
        -v "{{invocation_directory()}}:/work" \
        -w /work \
        -v "{{env_var('HOME')}}/.cache/mkosi-workspace:/workspace" \
        ghcr.io/elementary/mkosi:edge \
        mkosi {{subcommand}}

bst *ARGS:
    #!/usr/bin/env bash
    set -xeuo pipefail

    just mkosi box bst {{ARGS}} && \
    sudo chown -R 1000:1000 elements/



clean:
    just mkosi clean
    sudo rm -r mkosi.tools/ mkosi.cache/ ~/.cache/mkosi/*

compress-repo:
    #!/usr/bin/env bash
    set -euo pipefail
    cd mkosi.output
    shopt -s nullglob
    split=(elementary_*.usr-*.*.raw)
    if [ ${#split[@]} -eq 0 ]; then
        echo "Fatal: No split OS partition artifacts found to compress." >&2
        exit 1
    fi
    drivers=(driver-*.raw)
    files=("${split[@]}" "${drivers[@]}")
    zstd -T0 --rm -f "${files[@]}"
    ls -l "${files[@]/%/.zst}"

checksum-repo:
    #!/usr/bin/env bash
    set -euo pipefail
    cd mkosi.output
    sha256sum elementary_*.efi \
        elementary_*.usr-*.*.raw.zst \
        > SHA256SUMS
    cat SHA256SUMS

checksum-ext:
    #!/usr/bin/env bash
    cd mkosi.output
    mkdir ext
    mv {ext,driver}-*.raw.zst ext/
    mv *addon.efi ext/
    cd ext/
    sha256sum {ext,driver}-*.raw.zst > SHA256SUMS
    sha256sum *addon.efi >> SHA256SUMS
    cat SHA256SUMS
