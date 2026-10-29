kind: meson

sources:
- kind: git_repo
  url: github:elementary/panel-nightlight.git
  track: main
  ref: 2.1.3-46-gfbe5a2a988da1240a4514908d649fd8e1899f097

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- freedesktop-sdk.bst:components/glib.bst
- deps/gtk-4.bst
- deps/libadwaita.bst
- desktop/panel/wingpanel.bst
- deps/granite-7.bst
