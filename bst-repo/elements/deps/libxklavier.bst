kind: autotools

sources:
- kind: tar
  url: freedesktop_people:~svu/libxklavier-5.4.tar.bz2
  ref: 17a34194df5cbcd3b7bfd0f561d95d1f723aa1c87fca56bc2c209514460a9320

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

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
