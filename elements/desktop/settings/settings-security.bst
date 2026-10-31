kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings-security-privacy
  track: main
  ref: 8.0.2-20-g117468c632315b190a96d07e18a161090a8c6f85

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/polkit-gobject.bst
- deps/libzeitgeist.bst

depends:
- desktop/settings/switchboard.bst
- gnome-build-meta.bst:core/gnome-settings-daemon.bst
- deps/libadwaita.bst
- deps/gtk-4.bst
- deps/granite-7.bst
