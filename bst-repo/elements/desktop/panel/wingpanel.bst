kind: meson

sources:
- kind: git_repo
  url: github:elementary/wingpanel.git
  track: main
  ref: 8.0.4-49-ge737de88bc02ddc82a9f4d23f574cc3c04098c03

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- gnome-build-meta.bst:core/sysprof-app.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- freedesktop-sdk.bst:components/glib.bst
- deps/gtk-4.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- gnome-build-meta.bst:sdk/libgee.bst
- desktop/mutter.bst
- deps/granite-7.bst
- desktop/gala.bst
