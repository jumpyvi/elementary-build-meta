kind: meson

sources:
- kind: git_repo
  url: github:elementary/session-settings.git
  track: main
  ref: 8.1.0-10-g10e8d30652dc522b68585561980f9b5afe8a6a1d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:components/systemd.bst
- gnome-build-meta.bst:core/gnome-settings-daemon.bst