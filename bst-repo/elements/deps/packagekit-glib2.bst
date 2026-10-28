kind: meson

sources:
- kind: git_repo
  url: github:PackageKit/PackageKit.git
  track: main
  ref: v1.4.0-8-g2c68345cd19a603758e147d37f200bd62b197564

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnome-build-meta.bst:sdk/glib.bst
- freedesktop-sdk.bst:components/sqlite.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/jansson.bst

variables:
  meson-local: |-
    -Dpackaging_backend=dummy \
    -Dgstreamer_plugin=false \
    -Dgtk_module=false \
    -Dbash_completion=false \
    -Dbash_command_not_found=false \
    -Dgtk_doc=false \
    -Dman_pages=false \
    -Doffline_update=false \
    -Dsystemd=false
