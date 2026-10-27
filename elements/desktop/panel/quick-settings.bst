kind: meson

sources:
- kind: git_repo
  url: github:elementary/quick-settings
  track: main
  ref: 1.4.0-21-g425729a4fdc5ec80b355e14c1095a5a004240180

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnome-build-meta.bst:sdk/libportal.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- deps/gtk-4.bst
- deps/libadwaita.bst
- deps/granite-7.bst
- deps/packagekit-glib2.bst
- desktop/panel/wingpanel.bst
