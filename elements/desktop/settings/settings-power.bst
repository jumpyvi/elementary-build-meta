kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings-power.git
  track: main
  ref: 8.1.0-26-g0eb59d3af2e48a24b3ecf436943eddd585187268

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/polkit-gobject.bst
- freedesktop-sdk.bst:components/dbus.bst

depends:
- freedesktop-sdk.bst:components/systemd.bst
- desktop/settings/switchboard.bst
- freedesktop-sdk.bst:components/glib.bst
- gnome-build-meta.bst:core/gnome-settings-daemon.bst
- deps/libadwaita.bst
- deps/gtk-4.bst
- deps/granite-7.bst
