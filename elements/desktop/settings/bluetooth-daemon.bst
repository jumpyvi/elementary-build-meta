kind: meson

sources:
- kind: git_repo
  url: github:elementary/bluetooth-daemon.git
  track: main
  ref: 1.1.0-79-ga457eca62cf4cef3592ef2489a45afe75c8abb80

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