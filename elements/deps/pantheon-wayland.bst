# Dummy package only
kind: meson

sources:
- kind: git_repo
  url: github:elementary/pantheon-wayland.git
  track: main
  ref: 1.1.0-2-g74020b3651bd4a11b5b3d672454d6ee4064237f2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/wayland.bst
- gnome-build-meta.bst:sdk/gtk.bst
