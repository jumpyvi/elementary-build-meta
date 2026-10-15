kind: meson

sources:
- kind: git_repo
  url: github:garaevdi/wingpanel.git
  track: mutter-51
  ref: 0638a39c44e6a88cabab52471d43a15726f02e74

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- freedesktop-sdk.bst:components/glib.bst
- gnome-build-meta.bst:sdk/gtk.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- gnome-build-meta.bst:sdk/libgee.bst
- gnome-build-meta.bst:core/mutter.bst
- deps/granite-7.bst
- desktop/gala.bst
