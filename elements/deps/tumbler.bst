kind: meson

sources:
- kind: tar
  url: xfce-archive:tumbler/4.21/tumbler-4.21.1.tar.xz
  ref: 0f499f79a2a7ee49726a433584dd8a680d514101b72bd1b003360611ce1dc244

build-depends:
    - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
    - freedesktop-sdk.bst:components/pkg-config.bst
    - deps/libxfce4util.bst

depends:
    - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
    - freedesktop-sdk.bst:components/glib.bst
    - freedesktop-sdk.bst:components/gdk-pixbuf.bst
