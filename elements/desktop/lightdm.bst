kind: autotools

sources:
- kind: git_repo
  url: github:ubuntu/lightdm.git
  track: main
  ref: 1.33.1-1-g29b06b457b0380a24e3bad630407d90d2ac2fca6
- kind: local
  path: files/lightdm/

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
- freedesktop-sdk.bst:components/systemd.bst
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
    --with-user-session=systemd \
    --with-greeter-user=lightdm \
    --with-greeter-session=io.elementary.greeter

config:
  install-commands:
    (>):
    - |
      install -Dm644 lightdm-users.conf \
        "%{install-root}%{prefix}/lib/sysusers.d/lightdm-users.conf"
    - |
      install -Dm644 lightdm-dirs.conf \
        "%{install-root}%{prefix}/lib/tmpfiles.d/lightdm-dirs.conf"