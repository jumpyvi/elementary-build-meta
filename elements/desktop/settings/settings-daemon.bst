kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings-daemon.git
  track: main
  ref: 8.5.0-13-g2f83d4372bbf11fca2a75145bfafea5d6de19178

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:components/systemd.bst
- deps/libgexiv14.bst
- deps/packagekit-glib2.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnome-build-meta.bst:core/gnome-desktop.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gdk-pixbuf.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk-extra.bst:components/accountsservice.bst
- freedesktop-sdk.bst:components/dbus.bst
- deps/granite-7.bst
