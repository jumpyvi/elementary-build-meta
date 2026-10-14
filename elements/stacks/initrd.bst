# https://github.com/hecknt/zirconium-hawaii/blob/hecknt/mkosi/elements/ddi/initrd.bst
kind: compose

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst
- freedesktop-sdk.bst:components/btrfs-progs.bst
- freedesktop-sdk.bst:components/cryptsetup.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/linux-firmware.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/lvm2.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/tpm2-tools.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/linux.bst

config:
  exclude:
  - debug
  - devel
  - doc
  - locale
  - extra
  - tests