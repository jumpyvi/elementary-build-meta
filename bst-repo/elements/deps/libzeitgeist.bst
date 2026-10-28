kind: autotools

sources:
- kind: tar
  url: freedesktop_files:zeitgeist/zeitgeist/-/archive/v1.0.4/zeitgeist-v1.0.4.tar.gz
  ref: 83b2a02c57c232e7d932af75295d5f4c685b21429c1de04347a114b9ac4fac40

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- gnome-build-meta.bst:sdk/vala.bst
- gnome-build-meta.bst:sdk/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnome-build-meta.bst:sdk/glib.bst
- freedesktop-sdk.bst:components/gtk3.bst
- gnome-build-meta.bst:sdk/json-glib.bst
- deps/python/rdflib.bst

variables:
  conf-local: >-
    --disable-static
    --disable-telepathy
