kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings-sharing.git
  track: main
  ref: 8.0.3-13-gdd82b68f80502885a76b48446789e7ddda534d7b

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
