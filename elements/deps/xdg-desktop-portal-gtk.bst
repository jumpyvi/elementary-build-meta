kind: meson

sources:
- kind: git_repo
  url: github:flatpak/xdg-desktop-portal-gtk
  track: 1.15.3
  ref: 1.15.3-0-g337202d4e7179857bc37b03c1a6d8c9d92e47c44

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst

depends:
- freedesktop-sdk.bst:components/gtk3.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- gnome-build-meta.bst:core/gnome-desktop.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- freedesktop-sdk.bst:components/fontconfig.bst

variables:
  meson-local: >-
    -Dappchooser=enabled
    -Dlockdown=enabled
    -Dsettings=enabled
    -Dwallpaper=enabled