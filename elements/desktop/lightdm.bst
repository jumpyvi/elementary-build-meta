kind: autotools

sources:
- kind: git_repo
  url: github:ubuntu/lightdm.git
  track: 1.32.0
  ref: 1.32.0-0-g4b10d07b7bf87668a245b438b5ffc82e3956bd1c
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
    --with-user-session=pantheon-wayland  \
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
    - |
      install -Dm644 lightdm.service \
        "%{install-root}%{prefix}/lib/systemd/system/lightdm.service"
    - |
      install -Dm755 lightdm-session \
        "%{install-root}%{prefix}/bin/lightdm-session"
    - |-
      install -d "%{install-root}%{prefix}/lib/systemd/system/graphical.target.wants"
      ln -sf lightdm.service \
        "%{install-root}%{prefix}/lib/systemd/system/graphical.target.wants/lightdm.service"
      ln -sf lightdm.service \
        "%{install-root}%{prefix}/lib/systemd/system/display-manager.service"
