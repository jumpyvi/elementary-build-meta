kind: meson

sources:
- kind: git_repo
  url: github:elementary/panel-notifications
  track: main
  ref: 7.1.1-149-g033715d6375f62a15cad3edc0829a312a1d78f9b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- freedesktop-sdk.bst:components/glib.bst
- gnome-build-meta.bst:sdk/gtk.bst
- gnome-build-meta.bst:sdk/libadwaita.bst
- freedesktop-sdk.bst:components/gdk-pixbuf.bst
- desktop/panel/wingpanel.bst
- deps/granite-7.bst
- desktop/panel/wingpanel.bst
