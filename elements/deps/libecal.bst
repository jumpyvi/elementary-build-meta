# Bare minimum EDS for date-time support
kind: cmake

sources:
- kind: git_repo
  url: gnome:evolution-data-server.git
  track: master
  ref: 3.62.0-57-gea6b0124d91263f8ca86dd528b1d027daab508ef

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

depends:
- deps/gnome-online-accounts.bst
- gnome-build-meta.bst:core-deps/libcanberra.bst
- gnome-build-meta.bst:sdk/gcr.bst
- freedesktop-sdk.bst:components/libsecret.bst
- freedesktop-sdk.bst:components/libsoup.bst
- freedesktop-sdk.bst:components/libical.bst
- freedesktop-sdk.bst:components/nspr.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DLIB_INSTALL_DIR=%{libdir}
    -DSYSCONF_INSTALL_DIR=%{sysconfdir}
    -DENABLE_GTK=OFF
    -DENABLE_OAUTH2_WEBKITGTK=OFF
    -DENABLE_OAUTH2_WEBKITGTK4=OFF
    -DENABLE_GTK4=OFF
    -DENABLE_INTROSPECTION=ON
    -DENABLE_VALA_BINDINGS=ON
    -DWITH_OPENLDAP=OFF
    -DENABLE_EXAMPLES=OFF
    -DENABLE_UOA=OFF
    -DENABLE_GOOGLE_AUTH=OFF
    -DENABLE_WEATHER=OFF
    -DWITH_GWEATHER=OFF
    -DWITH_GWEATHER4=OFF
    -DWITH_LIBDB=OFF
    -DENABLE_GOOGLE=OFF
    -DWITH_KRB5=OFF