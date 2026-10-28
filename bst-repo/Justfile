default:
    @just --list

bst *ARGS:
    #!/usr/bin/env bash
    set -xeuo pipefail

    sudo ~/.local/bin/mkosi box bst {{ARGS}} && \
    sudo chown -R 1000:1000 elements/

build:
    sudo ~/.local/bin/mkosi build -ff
