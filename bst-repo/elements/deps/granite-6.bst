kind: meson

sources:
- kind: git_repo
  url: github:elementary/granite.git
  track: 6.2.0
  ref: 4ab145c28bb3db6372fe519e8bd79c645edfcda3

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk-extra.bst:components/sassc.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/pango.bst
- freedesktop-sdk.bst:components/gdk-pixbuf.bst
- freedesktop-sdk.bst:components/gtk3.bst
- gnome-build-meta.bst:sdk/libgee.bst

variables:
  meson-local: |
    -Dc_args="-Wno-error=incompatible-pointer-types -Wno-error=deprecated-declarations -Wno-error=discarded-qualifiers"