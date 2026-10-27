kind: meson

sources:
- kind: git_repo
  url: github:elementary/panel-sound
  track: main
  ref: 8.0.3-37-g8b7991c9156ac8127d27559506baea8e6fb72e5b

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
- gnome-build-meta.bst:sdk/libnotify.bst
- freedesktop-sdk.bst:components/libpulse.bst
- deps/granite-7.bst
- desktop/panel/wingpanel.bst
