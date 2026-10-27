kind: meson

sources:
- kind: git_repo
  url: github:elementary/granite.git
  track: main
  ref: 7.8.1-150-g8b5f0eaeb0a38256174aa7e557c2dc6f2bf9dc8b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk-extra.bst:components/sassc.bst
- gnome-build-meta.bst:core-deps/libshumate.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- gnome-build-meta.bst:sdk/gtk.bst
- gnome-build-meta.bst:sdk/libgee.bst
