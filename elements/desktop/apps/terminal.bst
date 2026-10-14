kind: meson

sources:
- kind: git_repo
  url: github:elementary/terminal.git
  track: main
  ref: 8.1.0-8-gb383d45fad21368394f25229557d4f2433530f57

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- gnome-build-meta.bst:sdk/gtk.bst
- gnome-build-meta.bst:core-deps/vte.bst
- gnome-build-meta.bst:sdk/libadwaita.bst
- gnome-build-meta.bst:core-deps/libcanberra.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/libxml2.bst
- gnome-build-meta.bst:core-deps/libhandy.bst
- deps/granite-7.bst
