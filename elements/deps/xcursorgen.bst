kind: autotools

sources:
- kind: tar
  url: freedesktop_files:xorg/app/xcursorgen/-/archive/xcursorgen-1.0.9/xcursorgen-xcursorgen-1.0.9.tar.bz2
  ref: a350f67323786aceef063e471d1661ae7e6d6ecb44e9143cf409070ad9ed053b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/xorg-util-macros.bst

depends:
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xcursor.bst
- freedesktop-sdk.bst:components/libpng.bst
