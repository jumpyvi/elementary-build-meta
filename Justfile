default:
    @just --list

bst *ARGS:
    #!/usr/bin/env bash
    set -xeuo pipefail

    sudo $(which mkosi) box bst {{ARGS}} && \
    sudo chown -R 1000:1000 elements/

build:
    sudo $(which mkosi) build -ff
