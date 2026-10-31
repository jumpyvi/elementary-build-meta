kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings-datetime.git
  track: main
  ref: 8.1.0-55-g70be7ebb8d7a6df860397392a37e4c506e5d9c13

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/libical.bst

depends:
- freedesktop-sdk.bst:components/systemd.bst
- desktop/settings/switchboard.bst
- gnome-build-meta.bst:core/gnome-settings-daemon.bst
- deps/libadwaita.bst
- deps/gtk-4.bst
- deps/granite-7.bst
