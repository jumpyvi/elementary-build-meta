kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings-display.git
  track: main
  ref: 8.0.3-7-g75865f9a87e424e7e7bf7072ff9f5de889a8ef77

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:components/systemd.bst
- desktop/settings/switchboard.bst
- gnome-build-meta.bst:core/gnome-settings-daemon.bst
- deps/libadwaita.bst
- deps/gtk-4.bst
- deps/granite-7.bst
