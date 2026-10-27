kind: meson

# //TODO Switch to upstream when merged (elements/desktop/greeter.bst)
sources:
- kind: git_repo
  url: github:garaevdi/gala.git
  track: mutter-51
  ref: 8.4.0-250-g182009103bcedd373cd9eb852bae980fcbc17f5c
  
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

runtime-depends:
- gnome-build-meta.bst:core/gnome-session.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/sqlite.bst
- gnome-build-meta.bst:sdk/gtk.bst
- gnome-build-meta.bst:sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- gnome-build-meta.bst:sdk/libgee.bst
- gnome-build-meta.bst:core/gnome-desktop.bst
- gnome-build-meta.bst:core/mutter.bst
- gnome-build-meta.bst:core-deps/libhandy.bst
- deps/granite-6.bst
- deps/granite-7.bst
