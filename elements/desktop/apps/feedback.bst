kind: meson

sources:
- kind: git_repo
  url: github:elementary/feedback.git
  track: main
  ref: 8.1.1-35-gb1b918eb00bf47b80119893746a83000fd54ea52

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- deps/appstream-minimal.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- deps/gtk-4.bst
- deps/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- deps/granite-9.bst
