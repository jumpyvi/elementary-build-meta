kind: meson

sources:
- kind: git_repo
  url: github:elementary/granite.git
  track: granite-7
  ref: 7.8.1-0-g4cd5188619e65f2f2410c9af834df903f6e4f85e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk-extra.bst:components/sassc.bst
- deps/libshumate.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- deps/gtk-4.bst
- gnome-build-meta.bst:sdk/libgee.bst
