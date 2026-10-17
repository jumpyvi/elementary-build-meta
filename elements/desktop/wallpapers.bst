kind: meson

sources:
- kind: tar
  url: github_files:elementary/wallpapers/archive/refs/tags/8.0.0.tar.gz
  ref: 88ab4ec8f7bf8385d704168e76f07bd6b7215551ceb45bea95cd417e7da9c434
  
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk-extra.bst:components/sassc.bst
