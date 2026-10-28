kind: meson

sources:
- kind: git_repo
  url: github:elementary/terminal.git
  track: main
  ref: 8.1.0-11-ga119bb253910b8451fd3b079629b323dc1af3687

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- deps/gtk-4.bst
- gnome-build-meta.bst:core-deps/vte.bst
- deps/libadwaita.bst
- gnome-build-meta.bst:core-deps/libcanberra.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/libxml2.bst
- gnome-build-meta.bst:core-deps/libhandy.bst
- deps/granite-7.bst
