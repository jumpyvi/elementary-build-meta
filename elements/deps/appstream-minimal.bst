# appstream with vapi support (for building)
kind: meson

sources:
- kind: git_repo
  url: github:ximion/appstream
  track: main
  ref: v1.2.1-13-g080896100988b907396a61271d9c78d849b83239
  
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:bootstrap/sed.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/gdk-pixbuf.bst
- freedesktop-sdk.bst:components/glib-networking.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/libfyaml.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/libxmlb.bst
- freedesktop-sdk.bst:components/pango.bst

variables:
  meson-local: >-
    -Dstemming=false
    -Dcompose=false
    -Dgir=true
    -Dsystemd=false
    -Ddocs=false
    -Dapidocs=false
    -Dman=false
    -Dblake3-support=false
    -Dvapi=true
