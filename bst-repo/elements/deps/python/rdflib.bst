kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-poetry.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-pyparsing.bst
- deps/python/isodate.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:RDFLib/rdflib.git
  track: "*.*.*"
  exclude:
  - "*a*"
  - "*b*"
  - "*rc*"
  - "*docs*"
  - "*alpha*"
  ref: 7.6.0-0-g8b32146a0f9cb748c2068662e50d02b42fc86dfd
