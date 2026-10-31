kind: meson

sources:
- kind: git_repo
  url: gnome:network-manager-applet.git
  track: 1.36.0
  ref: 1.36.0-0-g8accd508caa0400304a01da718eeab587ee8fb04

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/findutils.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libsecret.bst
- gnome-build-meta.bst:core-deps/libnma.bst
- freedesktop-sdk.bst:components/glib.bst

variables:
  meson-local: >-
    -Dselinux=false
    -Dappindicator=no
    -Dteam=false

config:
  install-commands:
    # Keep only nm-connection-editor files 
    # (https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=network-manager-applet-git)
    (>):
    - |
      find "%{install-root}" -mindepth 1 \
        ! -path "%{install-root}%{bindir}/nm-connection-editor" \
        ! -path "%{install-root}%{datadir}/applications/nm-connection-editor.desktop" \
        ! -path "%{install-root}%{datadir}/icons/hicolor/22x22/apps/nm-device-wwan.png" \
        ! -path "%{install-root}%{datadir}/icons/hicolor/scalable/apps/nm-device-wwan-symbolic.svg" \
        ! -path "%{install-root}%{datadir}/locale*" \
        ! -path "%{install-root}%{mandir}/man1/nm-connection-editor.1*" \
        ! -path "%{install-root}%{datadir}/metainfo*" \
        -delete 2>/dev/null || true
