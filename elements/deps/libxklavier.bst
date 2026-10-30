kind: autotools

sources:
- kind: git_repo
  url: freedesktop:archived-projects/libxklavier.git
  track: libxklavier-5.4
  ref: libxklavier-5.4-0-g396955bd2ba2db34a42b3807b03155fcc11dfe50

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/gtk-doc.bst
- freedesktop-sdk-extra.bst:components/intltool.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xi.bst
- freedesktop-sdk.bst:components/xorg-lib-xkbfile.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:components/xorg-app-xkbcomp.bst

variables:
  conf-local: |-
    --disable-static \
    --disable-gtk-doc \
    --with-xkb-base=/usr/share/X11/xkb \
    --with-xkb-bin-base=/usr/bin
