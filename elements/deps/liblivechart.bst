kind: meson

sources:
- kind: git_repo
  url: github:elementary/live-chart
  track: 2.0.0
  ref: 2.0.0-0-g1cdb953dd6313d5102e441c65be8e35c3e12cc32

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- gnome-build-meta.bst:sdk/libgee.bst
- freedesktop-sdk.bst:components/vala.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- deps/gtk-4.bst


# Tests depend on legacy x11 libs
config:
  configure-commands:
  - rm -rf tests
  - sed -i "/subdir('tests')/d" meson.build
  - '%{meson} %{meson-args}'