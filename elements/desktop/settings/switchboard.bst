kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings.git
  track: main
  ref: 8.0.3-38-g5fc894160388f8edb57e4562d2fae5addcf58077

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- deps/libadwaita.bst
- deps/gtk-4.bst
- gnome-build-meta.bst:sdk/libgee.bst
- freedesktop-sdk-extra.bst:components/sassc.bst
- deps/granite-7.bst