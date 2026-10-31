kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings-applications.git
  track: main
  ref: 8.3.0-26-gd4adbbbf51a8bf8b082585446d8ae11928accc04

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:components/systemd.bst
- desktop/settings/switchboard.bst
- freedesktop-sdk.bst:components/flatpak.bst
- gnome-build-meta.bst:core/gnome-settings-daemon.bst
- deps/libadwaita.bst
- deps/gtk-4.bst
- deps/granite-7.bst
