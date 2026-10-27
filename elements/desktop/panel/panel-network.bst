kind: meson

sources:
- kind: git_repo
  url: github:elementary/panel-network
  track: main
  ref: 8.0.1-23-g8685ec8e55a45e48da0c12931a353cd440d11664

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- gnome-build-meta.bst:core-deps/libnma.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- freedesktop-sdk.bst:components/glib.bst
- gnome-build-meta.bst:sdk/gtk.bst
- gnome-build-meta.bst:sdk/libadwaita.bst
- desktop/panel/wingpanel.bst
- deps/granite-7.bst
- desktop/panel/wingpanel.bst
