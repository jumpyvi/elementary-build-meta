kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: freedesktop-sdk-26.08*
  ref: freedesktop-sdk-26.08.2-0-g32c5fea70e827885fc805d38a9dc5716c39ed173
- kind: patch_queue
  path: patches/freedesktop-sdk

config:
  options:
    target_arch: '%{arch}'
    (?):
    - arch == 'x86_64':
        bootstrap_build_arch: 'x86_64'
    - arch == 'aarch64':
        bootstrap_build_arch: 'aarch64'

  overrides:
    components/at-spi2-core.bst: gnome-build-meta.bst:sdk/at-spi2-core.bst
    components/cairo.bst: gnome-build-meta.bst:sdk/cairo.bst
    components/gcab.bst: gnome-build-meta.bst:sdk/gcab.bst
    components/gdk-pixbuf.bst: gnome-build-meta.bst:sdk/gdk-pixbuf.bst
    components/glib-networking.bst: gnome-build-meta.bst:sdk/glib-networking.bst
    components/glib.bst: gnome-build-meta.bst:sdk/glib.bst
    components/gobject-introspection.bst: gnome-build-meta.bst:sdk/gobject-introspection.bst
    components/python3-gi-docgen.bst: gnome-build-meta.bst:sdk/gi-docgen.bst
    components/graphene.bst: gnome-build-meta.bst:sdk/graphene.bst
    components/gsettings-desktop-schemas.bst: gnome-build-meta.bst:sdk/gsettings-desktop-schemas.bst
    components/gtk-doc.bst: gnome-build-meta.bst:sdk/gtk-doc.bst
    components/gtk3.bst: gnome-build-meta.bst:sdk/gtk+-3.bst
    components/libibus.bst: gnome-build-meta.bst:sdk/libibus.bst
    components/json-glib.bst: gnome-build-meta.bst:sdk/json-glib.bst
    components/libnotify.bst: gnome-build-meta.bst:sdk/libnotify.bst
    components/librsvg.bst: gnome-build-meta.bst:sdk/librsvg.bst
    components/libsoup.bst: gnome-build-meta.bst:sdk/libsoup.bst
    components/pango.bst: gnome-build-meta.bst:sdk/pango.bst
    components/pygobject.bst: gnome-build-meta.bst:sdk/pygobject.bst
    components/vala.bst: gnome-build-meta.bst:sdk/vala.bst
    components/libsecret.bst: gnome-build-meta.bst:sdk/libsecret.bst
    components/krb5.bst: gnome-build-meta.bst:sdk/krb5.bst
    components/appstream-minimal.bst: deps/appstream-minimal.bst
    components/zenity.bst: gnome-build-meta.bst:void/zenity.bst
