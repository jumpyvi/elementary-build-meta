kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

variables:
  strip-binaries: ""

environment:
  NAME: "elementaryOS"
  CODENAME: "bst"
  HOME_URL: "none"
  DOCUMENTATION_URL: "none"
  SUPPORT_URL: "none"
  ID: "elbst"
  VERSION: "bst.%{freedesktop-sdk-flatpak-branch}"

config:
  build-commands:
    - mkdir -p %{install-root}%{indep-libdir}/
    - |
      cat >"%{install-root}%{indep-libdir}/os-release" <<EOF
      NAME="${NAME}"
      PRETTY_NAME="${NAME}"
      VERSION="${VERSION}"
      VERSION_ID="${VERSION}"
      ID="${ID}"
      ID_LIKE="org.freedesktop.platform"
      VERSION_CODENAME="${CODENAME}"
      HOME_URL="${HOME_URL}"
      SUPPORT_URL="${SUPPORT_URL}"
      BUG_REPORT_URL="${SUPPORT_URL}"
      DOCUMENTATION_URL="${DOCUMENTATION_URL}"
      LOGO="logo"
      DEFAULT_HOSTNAME="elos"
      EOF
      mkdir -p %{install-root}%{sysconfdir}/
      ln -sf ../usr/lib/os-release %{install-root}%{sysconfdir}/os-release