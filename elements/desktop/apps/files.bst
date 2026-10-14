kind: meson

sources:
- kind: git_repo
  url: github:elementary/files.git
  track: main
  ref: 7.3.2-15-gbc6ad6149398f61473be278c23673c179994c878

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
- gnome-build-meta.bst:core-deps/libgit2-glib.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/sqlite.bst
- gnome-build-meta.bst:sdk/pango.bst
- gnome-build-meta.bst:sdk/libportal.bst
- gnome-build-meta.bst:core-deps/libcloudproviders.bst
- freedesktop-sdk.bst:components/poppler.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- gnome-build-meta.bst:core-deps/libhandy.bst
- deps/granite-7.bst
- deps/granite.bst