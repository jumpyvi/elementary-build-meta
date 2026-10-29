# Slightly older adwaita built from fsdk instead of Gnome
kind: meson

sources:
- kind: tar
  url: gnome_downloads:libadwaita/1.9/libadwaita-1.9.4.tar.xz
  ref: f5ab3453ee743dc293cdf96d6821789cd20e8d125d9b41637703c12bfa4162ee
build-depends:
- freedesktop-sdk-extra.bst:components/sassc.bst
- freedesktop-sdk.bst:components/python3-gi-docgen.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- gnome-build-meta.bst:sdk/sysprof-minimal.bst

depends:
- deps/gtk-4.bst
- freedesktop-sdk.bst:components/appstream.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dprofiling=true
    -Dgtk_doc=true
    -Dexamples=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libadwaita-1.so'