kind: meson

sources:
- kind: tar
  url: gnome_downloads:librest/0.10/librest-0.10.2.tar.xz
  ref: 7b6cb912bb3a22cfa7dcf005925dcb62883024db0c09099486e7d6851185c9b8
build-depends:
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/python3-gi-docgen.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst


depends:
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/json-glib.bst
- gnome-build-meta.bst:sdk/gtksourceview.bst
- freedesktop-sdk.bst:components/libsoup.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dsoup2=false
    -Dexamples=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/librest-demo'
        - '%{datadir}/applications/org.gnome.RestDemo.desktop'
        - '%{libdir}/librest-1.0.so'
