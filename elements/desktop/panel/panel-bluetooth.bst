kind: meson

sources:
- kind: git_repo
  url: github:elementary/panel-bluetooth.git
  track: main
  ref: 8.0.0-57-g6c7858a340a568f3702f96e861e0667bd32cdc48

build-depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
  - freedesktop-sdk.bst:components/pkg-config.bst
  - freedesktop-sdk.bst:components/gettext.bst
  - freedesktop-sdk.bst:components/vala.bst

runtime-depends:
  - desktop/settings/bluetooth-daemon.bst

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
  - freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
  - freedesktop-sdk.bst:components/glib.bst
  - deps/gtk-4.bst
  - deps/libadwaita.bst
  - desktop/panel/wingpanel.bst
  - deps/granite-7.bst