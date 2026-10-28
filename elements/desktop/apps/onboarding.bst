kind: meson

sources:
- kind: git_repo
  url: github:elementary/onboarding.git
  track: main
  ref: 8.1.0-21-g70962d1850d572af4763753d0d61334f5a237e05

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- deps/pantheon-wayland.bst
- deps/gtk-4.bst
- deps/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- deps/granite-9.bst
