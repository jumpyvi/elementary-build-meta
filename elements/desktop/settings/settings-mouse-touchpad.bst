kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings-mouse-touchpad.git
  track: main
  ref: 8.1.0-62-g22c53096f40b5210faecff5335a28534cda929a9

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- desktop/settings/switchboard.bst
- gnome-build-meta.bst:core/gnome-settings-daemon.bst
- deps/libadwaita.bst
- deps/gtk-4.bst
- deps/granite-7.bst
