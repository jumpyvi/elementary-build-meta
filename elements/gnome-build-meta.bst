kind: junction

sources:
- kind: git_repo
  url: gnome:gnome-build-meta.git
  track: gnome-51
  ref: 51.0-14-ga554d80859ec6e2adf6ffe91d3e48cc03892f227
- kind: patch_queue
  path: patches/gnome-build-meta

config:
  overrides:
    # This along with the patches is required and has to match what gnome-build-meta is using
    freedesktop-sdk.bst: freedesktop-sdk.bst
    freedesktop-sdk-extra.bst: freedesktop-sdk-extra.bst
    core-deps/systemd.bst: freedesktop-sdk.bst:components/systemd.bst
