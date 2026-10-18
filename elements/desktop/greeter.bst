kind: meson

sources:
- kind: git_repo
  url: github:elementary/greeter.git
  track: 8.1.2
  ref: 8.1.2-0-ga9e5386c0ec07a1c4b885a5db4f68c216aa5e39c

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
- gnome-build-meta.bst:core/mutter.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- gnome-build-meta.bst:core/gnome-desktop.bst
- gnome-build-meta.bst:sdk/gdk-pixbuf.bst
- gnome-build-meta.bst:core/gnome-settings-daemon.bst
- desktop/lightdm.bst
- gnome-build-meta.bst:sdk/glib.bst
- gnome-build-meta.bst:core-deps/libhandy.bst
- deps/granite-7.bst
- deps/granite.bst
