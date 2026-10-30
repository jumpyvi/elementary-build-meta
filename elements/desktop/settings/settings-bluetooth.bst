kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings-bluetooth.git
  track: main
  ref: 8.0.2-47-g191cf10cc81be6093a4abb25bf085524589c16d6

build-depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/vala.bst

runtime-depends:
  - desktop/settings/bluetooth-daemon.bst

depends:
  - freedesktop-sdk.bst:components/systemd.bst
  - desktop/settings/switchboard.bst
  - gnome-build-meta.bst:core/gnome-settings-daemon.bst
  - deps/libadwaita.bst
  - deps/gtk-4.bst
  - deps/granite-7.bst