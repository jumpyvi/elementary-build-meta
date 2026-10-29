kind: meson

sources:
- kind: git_repo
  url: github:GNOME/gexiv2.git
  track: gexiv2-0.14
  ref: gexiv2-0.14.6-0-g0da21adecba9b74d5fe7469373d7e360d3f34e3d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- gnome-build-meta.bst:core-deps/exiv2.bst

config:
  configure-commands:
  - |-
    meson setup . _builddir \
      --prefix=/usr \
      --libdir=/usr/lib/x86_64-linux-gnu/ \
      --bindir=/usr/bin \
      --sbindir=/usr/bin \
      --sysconfdir=/etc \
      --datadir=/usr/share \
      --includedir=/usr/include \
      --libexecdir=/usr/libexec \
      -Dvapi=true \
      -Dintrospection=true \
      -Dtests=false \
      -Dpython3=false \
      -Dgtk_doc=false
