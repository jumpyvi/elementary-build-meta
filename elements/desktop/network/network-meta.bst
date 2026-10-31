kind: stack

depends:
  - freedesktop-sdk.bst:vm/config/networkd.bst
  - freedesktop-sdk.bst:vm/config/resolved.bst
  - freedesktop-sdk.bst:components/openssh.bst
  - freedesktop-sdk.bst:components/openssh-systemd.bst
  - freedesktop-sdk.bst:components/iproute2.bst
  - freedesktop-sdk.bst:components/wpa-supplicant.bst
  - freedesktop-sdk.bst:components/hosts.bst
  - freedesktop-sdk.bst:components/cups.bst
  - freedesktop-sdk.bst:components/cups-daemon.bst
  - freedesktop-sdk.bst:components/ca-certificates.bst
  - desktop/network/nm-connection-editor.bst
  - gnome-build-meta.bst:core-deps/NetworkManager.bst
  # - gnome-build-meta.bst:gnomeos-deps/NetworkManager-openconnect.bst # Requires WebKitGTK ):
  - gnome-build-meta.bst:gnomeos-deps/NetworkManager-openvpn.bst
  - gnome-build-meta.bst:gnomeos-deps/NetworkManager-vpnc.bst