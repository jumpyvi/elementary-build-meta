kind: autotools

sources:
- kind: git_repo
  url: github:ubuntu/lightdm.git
  track: main
  ref: 1.33.1-1-g29b06b457b0380a24e3bad630407d90d2ac2fca6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk-extra.bst:components/intltool.bst
- gnome-build-meta.bst:sdk/yelp-tools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnome-build-meta.bst:sdk/glib.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xcb.bst
- freedesktop-sdk.bst:components/xorg-lib-xdmcp.bst
- deps/libxklavier.bst
- freedesktop-sdk.bst:components/audit.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk-extra.bst:components/accountsservice.bst

variables:
  conf-local: |-
    --sysconfdir=/etc \
    --localstatedir=/var \
    --disable-static \
    --disable-tests \
    --with-greeter-user=lightdm \
    --with-greeter-session=lightdm-gtk-greeter
