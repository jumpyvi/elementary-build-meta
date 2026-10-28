kind: meson

sources:
- kind: git_repo
  url: github:elementary/initial-setup.git
  track: main
  ref: 8.0.1-34-g1be1a6fb5f040a881bc41c4bc1453afae4904f63
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- gnome-build-meta.bst:sdk/json-glib.bst
- freedesktop-sdk-extra.bst:components/accountsservice.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- deps/granite-7.bst
- deps/gtk-4.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- deps/libadwaita.bst
- deps/pantheon-wayland.bst
