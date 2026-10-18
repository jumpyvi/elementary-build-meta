kind: meson

sources:
- kind: git_repo
  url: github:elementary/default-settings.git
  track: main
  ref: 8.1.1-8-g915d1a0b63865ce3f0d44a68318d55ef9ca90fe6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk-extra.bst:components/accountsservice.bst

depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/polkit-gobject.bst

public:
  bst:
    overlap-whitelist:
      - /usr/share/cups/data/default-testpage.pdf