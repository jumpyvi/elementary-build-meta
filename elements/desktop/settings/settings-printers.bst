kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings-printers.git
  track: main
  ref: 8.0.2-16-g7c1208ba37e7c7303e62b30dfabddaac57e5084d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/cups.bst
- desktop/settings/switchboard.bst
- gnome-build-meta.bst:core/gnome-settings-daemon.bst
- deps/libadwaita.bst
- deps/gtk-4.bst
- deps/granite-7.bst
