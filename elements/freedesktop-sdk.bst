kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: freedesktop-sdk-26.08*
  ref: freedesktop-sdk-26.08.4-0-g114ae909ec9881958bd507c8b4414aa33f758d2b
- kind: patch_queue
  path: patches/freedesktop-sdk

config:
  options:
    target_arch: '%{arch}'
    (?):
    - arch == 'x86_64':
        bootstrap_build_arch: 'x86_64'
    - arch == 'aarch64':
        bootstrap_build_arch: 'aarch64'

  overrides:
    components/appstream-minimal.bst: deps/appstream-minimal.bst
    components/appstream.bst: deps/appstream-minimal.bst
    components/networkmanager.bst: gnome-build-meta.bst:core-deps/NetworkManager.bst