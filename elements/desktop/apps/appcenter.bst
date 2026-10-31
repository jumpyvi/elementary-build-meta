kind: meson

sources:
- kind: git_repo
  url: github:elementary/appcenter.git
  track: 8.4.0
  ref: 8.4.0-0-g5f348652e58a817686c6cf101f8cdbe3bdb3024b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk-extra.bst:components/sassc.bst
- freedesktop-sdk.bst:components/libsoup.bst
- gnome-build-meta.bst:sdk/libportal.bst
- freedesktop-sdk.bst:components/libxml2.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- deps/appstream-minimal.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/polkit-gobject.bst
- deps/gtk-4.bst
- deps/libadwaita.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- deps/granite-7.bst
- deps/granite-6.bst
