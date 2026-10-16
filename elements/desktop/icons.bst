kind: meson

sources:
- kind: git_repo
  url: github:elementary/icons.git
  track: main
  ref: 9.0.0-43-gf525fd784cdc409d508593fd36a2e45f1a56240d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/librsvg.bst
- deps/xcursorgen.bst
