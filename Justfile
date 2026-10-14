default:
    @just --list

base_dir := env("BUILD_BASE_DIR", ".")
bst_image := env("BST_IMAGE", "registry.gitlab.com/freedesktop-sdk/infrastructure/freedesktop-sdk-docker-images/bst2:188e1f83de7a9cc5c4c2d779942a45b0ec3f093f")

bst *ARGS:
    #!/usr/bin/env bash
    set -xeuo pipefail

    sudo $(which mkosi) box bst {{ARGS}}'


[ arg ("branch", long="branch", short="b") ]
generate-image-version branch="25.08":
    #!/usr/bin/env bash
    set -xeu

    # git command prints the date
    IMAGE_VERSION=$(git log -1 --format=%cd --date=format:%Y%m%d%H%M)
    # git command prints the current commit hash
    COMMIT=$(git rev-parse HEAD)
    # CI will change this depending on whether stable or another branch
    BRANCH={{branch}}

    cat > include/image-version.yml <<EOF
    branch: '${BRANCH}'
    commit: '${COMMIT}'
    image-version: '%{branch}.${IMAGE_VERSION}'
    EOF
