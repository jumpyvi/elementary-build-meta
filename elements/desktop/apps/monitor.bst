kind: meson

sources:
- kind: git_repo
  url: github:elementary/monitor.git
  track: main
  ref: 8.0.1-172-ga1cdf123f92cbbdcf3ca3d5409b92fafc66c0e11

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk-extra.bst:components/sassc.bst
- freedesktop-sdk.bst:components/libsoup.bst
- gnome-build-meta.bst:core-deps/libgtop.bst
- gnome-build-meta.bst:sdk/libportal.bst
- freedesktop-sdk.bst:components/json-glib.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/udisks.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/pciutils.bst
- deps/liblivechart.bst
- deps/gtk-4.bst
- deps/libadwaita.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- deps/granite-7.bst
- deps/granite-6.bst

# Keep nvidia support off for now
variables:
  meson-local: >-
    -Dnvidia=disabled
