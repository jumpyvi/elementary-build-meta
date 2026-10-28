kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings-network.git
  track: main
  ref: 8.2.0-33-g737467fb79849b617859784bd85157894787a459

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:components/systemd.bst
- desktop/settings/switchboard.bst
- gnome-build-meta.bst:core-deps/libnma.bst
- gnome-build-meta.bst:core/gnome-settings-daemon.bst
- deps/gtk-4.bst
- deps/granite-7.bst
