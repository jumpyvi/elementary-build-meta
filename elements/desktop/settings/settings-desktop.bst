kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings-desktop.git
  track: main
  ref: 8.3.0-31-g0403b77e2ee9cd285dcf8e01f3f45f835840dab7

build-depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/vala.bst

runtime-depends:
  - deps/tumbler.bst

depends:
  - freedesktop-sdk.bst:components/systemd.bst
  - gnome-build-meta.bst:sdk/libgee.bst
  - desktop/settings/switchboard.bst
  - gnome-build-meta.bst:core/gnome-settings-daemon.bst
  - deps/libgexiv14.bst
  - deps/gtk-4.bst
  - deps/granite-7.bst
