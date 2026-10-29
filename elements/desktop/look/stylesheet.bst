kind: meson

sources:
- kind: git_repo
  url: github:elementary/stylesheet.git
  track: main
  ref: 8.2.2-42-ga6e19988a11f3e70e728d4951ab29e080660b31c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk-extra.bst:components/sassc.bst
