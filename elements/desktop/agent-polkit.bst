kind: meson

sources:
- kind: git_repo
  url: github:elementary/pantheon-agent-polkit.git
  track: main
  ref: 8.1.0-13-g7348cdafd98e2a35f641f09dcc741729669b7cc7

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- deps/granite-7.bst
- deps/gtk-4.bst
- deps/libadwaita.bst
- deps/pantheon-wayland.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/polkit-gobject.bst
- gnome-build-meta.bst:sdk/gcr.bst