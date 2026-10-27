kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-online-accounts.git
  track: master
  ref: 3.58.1-15-g911f093ab55a367bc34373f5f78c9f83a8378045

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/python3-gi-docgen.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- deps/libadwaita.bst
- freedesktop-sdk.bst:components/libxslt.bst

depends:
- deps/librest.bst
- gnome-build-meta.bst:sdk/gcr.bst
- deps/gtk-4.bst
- freedesktop-sdk.bst:components/json-glib.bst
- freedesktop-sdk.bst:components/libsecret.bst
- freedesktop-sdk.bst:components/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/keyutils.bst
