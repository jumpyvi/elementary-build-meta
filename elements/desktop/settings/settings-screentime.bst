# Malcontent from gnomeOS is broken, disabled for now

# kind: meson

# sources:
# - kind: git_repo
#   url: github:elementary/settings-screentime-limits.git
#   track: main
#   ref: 8.0.1-70-g6f800d8db5b492648038e292cd292601c1a56dc7

# build-depends:
# - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
# - freedesktop-sdk.bst:components/vala.bst
# - freedesktop-sdk.bst:components/polkit-gobject.bst
# - freedesktop-sdk-extra.bst:components/accountsservice.bst

# depends:
# - freedesktop-sdk.bst:components/systemd.bst
# - desktop/settings/switchboard.bst
# - freedesktop-sdk.bst:components/flatpak.bst
# - gnome-build-meta.bst:core/gnome-settings-daemon.bst
# - gnome-build-meta.bst:core-deps/malcontent.bst
# - deps/gtk-4.bst
# - deps/granite-7.bst
