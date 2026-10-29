kind: meson

sources:
- kind: git_repo
  url: github:elementary/settings-notifications.git
  track: main
  ref: 8.0.1-13-gfff879ab694092664dfea144c36df639a5ff5881

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:components/systemd.bst
- desktop/settings/switchboard.bst
- gnome-build-meta.bst:core/gnome-settings-daemon.bst
- deps/gtk-4.bst
- deps/granite-7.bst
