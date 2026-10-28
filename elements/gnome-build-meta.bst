kind: junction

sources:
- kind: git_repo
  url: gnome:gnome-build-meta.git
  track: gnome-51
  ref: 51.1-36-g8a89846df11e86cee57c728a86a247e61d604b84
- kind: patch_queue
  path: patches/gnome-build-meta

config:
  overrides:
    # This along with the patches is required and has to match what gnome-build-meta is using
    freedesktop-sdk.bst: freedesktop-sdk.bst
    freedesktop-sdk-extra.bst: freedesktop-sdk-extra.bst
    core-deps/systemd.bst: freedesktop-sdk.bst:components/systemd.bst
    core-deps/udisks2.bst: freedesktop-sdk.bst:components/udisks.bst
    sdk/vala.bst: freedesktop-sdk.bst:components/vala.bst
    sdk/gtk+-3.bst: freedesktop-sdk.bst:components/gtk3.bst
    sdk/at-spi2-core.bst: freedesktop-sdk.bst:components/at-spi2-core.bst
    sdk/cairo.bst: freedesktop-sdk.bst:components/cairo.bst
    sdk/gcab.bst: freedesktop-sdk.bst:components/gcab.bst
    sdk/gdk-pixbuf.bst: freedesktop-sdk.bst:components/gdk-pixbuf.bst
    sdk/glib-networking.bst: freedesktop-sdk.bst:components/glib-networking.bst
    sdk/gobject-introspection.bst: freedesktop-sdk.bst:components/gobject-introspection.bst
    sdk/graphene.bst: freedesktop-sdk.bst:components/graphene.bst
    sdk/gi-docgen.bst: freedesktop-sdk.bst:components/python3-gi-docgen.bst
    sdk/gsettings-desktop-schemas.bst: freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
    sdk/gtk-doc.bst: freedesktop-sdk.bst:components/gtk-doc.bst
    sdk/json-glib.bst: freedesktop-sdk.bst:components/json-glib.bst
    sdk/krb5.bst: freedesktop-sdk.bst:components/krb5.bst
    sdk/libnotify.bst: freedesktop-sdk.bst:components/libnotify.bst
    sdk/librsvg.bst: freedesktop-sdk.bst:components/librsvg.bst
    sdk/libsecret.bst: freedesktop-sdk.bst:components/libsecret.bst
    sdk/libsoup.bst: freedesktop-sdk.bst:components/libsoup.bst
    sdk/pango.bst: freedesktop-sdk.bst:components/pango.bst
    sdk/pygobject.bst: freedesktop-sdk.bst:components/pygobject.bst
    sdk/libglycin.bst: freedesktop-sdk.bst:components/libglycin.bst
    sdk/glycin.bst: freedesktop-sdk.bst:components/glycin.bst
    sdk/glib.bst: freedesktop-sdk.bst:components/glib.bst
    core-deps/fwupd.bst : freedesktop-sdk.bst:components/fwupd.bst
    core-deps/upower.bst: freedesktop-sdk.bst:components/upower.bst
    core-deps/colord.bst: freedesktop-sdk.bst:components/colord.bst
    core-deps/librest.bst: deps/librest.bst
    core-deps/libshumate.bst: deps/libshumate.bst
    sdk/gtk.bst: deps/gtk-4.bst
    sdk/libadwaita.bst: deps/libadwaita.bst
    core-deps/gnome-online-accounts.bst: deps/gnome-online-accounts.bst
