# Built from fsdk with sysprof
kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.7/libshumate-1.7.0.tar.xz
  ref: 3896cc4b6a7bf83141c27df23ce48cdd68467603bc6b764960307cdcbbef80e5
build-depends:
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/python3-gi-docgen.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gperf.bst

depends:
- gnome-build-meta.bst:core-deps/protobuf-c.bst
- freedesktop-sdk.bst:components/glib.bst
- deps/gtk-4.bst
- freedesktop-sdk.bst:components/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dvector_renderer=true
    -Ddemos=false
    -Dsysprof=disabled
