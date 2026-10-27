kind: meson

sources:
- kind: git_repo
  url: github:elementary/panel-datetime
  track: main
  ref: 2.4.2-66-gd0b3a703a7efbb5b3040d7be1ccb616eeb919c54

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/libical.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- gnome-build-meta.bst:core-deps/evolution-data-server.bst
- freedesktop-sdk.bst:components/glib.bst
- gnome-build-meta.bst:sdk/gtk.bst
- gnome-build-meta.bst:sdk/libadwaita.bst
- desktop/panel/wingpanel.bst
- deps/granite-6.bst
- deps/granite-7.bst
- desktop/panel/wingpanel.bst
