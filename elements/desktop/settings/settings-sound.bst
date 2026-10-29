kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings-sound.git
  track: main
  ref: 8.0.3-24-g484ee80b3c79e5522bc54b13d378520243e2fbef

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:components/systemd.bst
- gnome-build-meta.bst:sdk/libgee.bst
- desktop/settings/switchboard.bst
- freedesktop-sdk.bst:components/libpulse.bst
- gnome-build-meta.bst:core-deps/libcanberra.bst
- gnome-build-meta.bst:core/gnome-settings-daemon.bst
- deps/libgexiv14.bst
- deps/libadwaita.bst
- deps/gtk-4.bst
- deps/granite-7.bst
