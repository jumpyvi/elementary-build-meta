kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings-system
  track: main
  ref: 8.2.3-12-g88cf2cb520de6d8374949d6ea53a3ec66cb6c5c8

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- deps/appstream-minimal.bst

depends:
- freedesktop-sdk.bst:components/fwupd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- deps/gtk-4.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/udisks.bst
- freedesktop-sdk.bst:components/polkit-gobject.bst
- gnome-build-meta.bst:core-deps/libgtop.bst
- deps/libadwaita.bst
- gnome-build-meta.bst:sdk/libsoup.bst
- desktop/settings/switchboard.bst
- deps/packagekit-glib2.bst
- deps/granite-7.bst
