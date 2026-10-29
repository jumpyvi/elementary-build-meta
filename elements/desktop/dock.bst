kind: meson

sources:
- kind: git_repo
  url: github:elementary/dock.git
  track: main
  ref: 8.3.3-21-ge945b4b37e440d9d6a57830f2d4d4712099b1dce

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/vala.bst

runtime-depends:
- freedesktop-sdk.bst:components/librsvg.bst
- freedesktop-sdk.bst:components/gdk-pixbuf.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gsettings-desktop-schemas.bst
- freedesktop-sdk.bst:components/glib.bst
- deps/gtk-4.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- deps/libadwaita.bst
- deps/granite-7.bst
