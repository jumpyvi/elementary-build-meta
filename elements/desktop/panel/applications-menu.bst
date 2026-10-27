kind: meson

sources:
- kind: git_repo
  url: github:elementary/applications-menu
  track: main
  ref: 8.0.4-19-g6420d557c13ac9e761326a59fade08a74581dcaa

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
- gnome-build-meta.bst:sdk/json-glib.bst
- gnome-build-meta.bst:sdk/libnotify.bst
- deps/granite-7.bst
- desktop/panel/wingpanel.bst
- desktop/settings/switchboard.bst
- deps/libzeitgeist.bst
