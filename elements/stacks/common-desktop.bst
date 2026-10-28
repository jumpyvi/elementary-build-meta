# stacks/common-desktop.bst
kind: stack

depends:
  - freedesktop-sdk.bst:components/desktop-file-utils.bst
  - freedesktop-sdk.bst:components/xwayland.bst
  - freedesktop-sdk.bst:components/flatpak.bst
  - freedesktop-sdk.bst:components/pipewire-daemon.bst
  - freedesktop-sdk.bst:components/cups-daemon.bst
  - freedesktop-sdk.bst:vm/config/flathub.bst
  - freedesktop-sdk.bst:vm/mesa-default.bst
  - gnome-build-meta.bst:gnomeos-deps/alsa-ucm-conf.bst
  - deps/xdg-desktop-portal-gtk.bst
  - gnome-build-meta.bst:core/gvfs-daemon.bst
  - gnome-build-meta.bst:sdk/gvfs-client.bst
  - gnome-build-meta.bst:sdk/pinentry.bst

  - freedesktop-sdk.bst:components/noto-emoji.bst
  - freedesktop-sdk.bst:components/tex-gyre-fonts.bst
  - gnome-build-meta.bst:gnomeos-deps/noto-cjk.bst
  - gnome-build-meta.bst:sdk/cantarell-fonts.bst
  - gnome-build-meta.bst:sdk/adwaita-fonts.bst

  - freedesktop-sdk.bst:components/vulkan-icd-loader.bst
  - freedesktop-sdk.bst:components/compat-vulkan-link.bst
