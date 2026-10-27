kind: meson

# //TODO Switch to upstream when merged (elements/desktop/greeter.bst)
sources:
- kind: git_repo
  url: github:elementary/gala.git
  track: main
  ref: 8.6.2-41-g00ad9d06b45126cefe23ee50a100c7706154d8b8

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- gnome-build-meta.bst:core/sysprof-app.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

runtime-depends:
- gnome-build-meta.bst:core/gnome-session.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/sqlite.bst
- deps/gtk-4.bst
- gnome-build-meta.bst:sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- gnome-build-meta.bst:sdk/libgee.bst
- gnome-build-meta.bst:core/gnome-desktop.bst
- desktop/mutter.bst
- gnome-build-meta.bst:core-deps/libhandy.bst
- deps/granite-6.bst
- deps/granite-7.bst
