default:
    @just --list

bst *ARGS:
    #!/usr/bin/env bash
    set -xeuo pipefail

    sudo $(which mkosi) box bst {{ARGS}}

build:
    sudo $(which mkosi) build -ff
