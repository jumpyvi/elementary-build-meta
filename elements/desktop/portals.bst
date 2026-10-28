kind: meson

sources:
- kind: git_repo
  url: github:elementary/portals.git
  track: main
  ref: 8.2.0-32-g4303df133c813f24c9334882fa46c209a0fda5ec

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- deps/gtk-4.bst
- gnome-build-meta.bst:core-deps/vte.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk-extra.bst:components/accountsservice.bst
- deps/libadwaita.bst
- deps/pantheon-wayland.bst
- deps/granite-7.bst
