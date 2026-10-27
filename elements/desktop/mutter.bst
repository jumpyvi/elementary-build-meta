kind: meson

sources:
- kind: tar
  url: gnome_downloads:mutter/50/mutter-50.6.tar.xz
  ref: abed98ed9c46934a0f761ba8c28a055305b99b4855e44c8273f881da7189bc9c
build-depends:
- gnome-build-meta.bst:core-deps/python-argcomplete.bst
- gnome-build-meta.bst:core-deps/python-dbusmock.bst
- gnome-build-meta.bst:core-deps/umockdev.bst
- freedesktop-sdk.bst:components/zenity.bst
- gnome-build-meta.bst:core/sysprof-app.bst
- freedesktop-sdk.bst:components/gtk-doc.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/colord.bst
- freedesktop-sdk.bst:components/libdisplay-info.bst
- gnome-build-meta.bst:core-deps/startup-notification.bst
- freedesktop-sdk.bst:components/upower.bst
- gnome-build-meta.bst:core/gnome-desktop.bst
- gnome-build-meta.bst:core/gnome-settings-daemon.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/glycin.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/graphene.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- deps/gtk-4.bst
- freedesktop-sdk.bst:components/json-glib.bst
- freedesktop-sdk.bst:components/pango.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libei.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libinput.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xwayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dxwayland_initfd=enabled
    -Dprofiler=true
