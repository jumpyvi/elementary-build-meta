kind: meson

sources:
- kind: tar
  url: xfce-archive:libxfce4util/4.21/libxfce4util-4.21.0.tar.xz
  ref: 205677cb96b778e5079eeac80f3a636d2a909b08fcf2aa05bfe4513c69c27f29

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
