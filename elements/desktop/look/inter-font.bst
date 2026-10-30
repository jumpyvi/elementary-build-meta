kind: manual

sources:
- kind: zip
  url: github_files:rsms/inter/releases/download/v4.1/Inter-4.1.zip
  ref: 9883fdd4a49d4fb66bd8177ba6625ef9a64aa45899767dde3d36aa425756b11e
  base-dir: ''

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

config:
  install-commands:
  - |
    install -Dm644 -t "%{install-root}%{datadir}/fonts/inter" InterVariable*.ttf
  - |
    install -Dm644 -t "%{install-root}%{datadir}/fonts/opentype/inter" extras/otf/*.otf
  strip-commands: []