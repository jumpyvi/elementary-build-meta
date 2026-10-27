kind: meson

sources:
- kind: git_repo
  url: github:elementary/greeter.git
  track: main
  ref: 8.1.2-51-g2eb38368c78b7d35877c3493f627c9666db68cea
- kind: patch_queue
  path: patches/greeter
  
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- gnome-build-meta.bst:sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- gnome-build-meta.bst:core/gnome-desktop.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- gnome-build-meta.bst:core/gnome-desktop.bst
- gnome-build-meta.bst:sdk/gdk-pixbuf.bst
- gnome-build-meta.bst:core/gnome-settings-daemon.bst
- desktop/lightdm.bst
- gnome-build-meta.bst:sdk/glib.bst
- gnome-build-meta.bst:core/mutter.bst
- gnome-build-meta.bst:core-deps/libhandy.bst
- deps/granite-7.bst
