# gtk4 built from fsdk instead of Gnome
kind: meson

sources:
- kind: git_repo
  url: gnome:gtk.git
  track: 4.22.5
  ref: 4.22.5-0-gbd25f1e2dc2c2fbf3b8864e61afe642910ba359c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:components/python3-gi-docgen.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/pygobject.bst
- freedesktop-sdk-extra.bst:components/sassc.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/shaderc.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
- gnome-build-meta.bst:sdk/sysprof-minimal.bst

depends:
- freedesktop-sdk.bst:components/at-spi2-core.bst
- freedesktop-sdk.bst:components/gdk-pixbuf.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/glycin.bst
- freedesktop-sdk.bst:components/graphene.bst
- freedesktop-sdk.bst:components/pango.bst
- freedesktop-sdk.bst:components/cups.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/hicolor-icon-theme.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/vulkan-icd-loader.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dbroadway-backend=false
    -Ddocumentation=false
    -Dman-pages=true
    -Dsysprof=enabled
    -Dx11-backend=true
    -Dwayland-backend=true
    -Dbuild-examples=false
    -Dbuild-tests=false
    -Dintrospection=enabled

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgtk-4.so'
        - '%{datadir}/gir-1.0'
        - '%{datadir}/gir-1.0/*-[0-9]*.gir'
