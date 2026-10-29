kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:gweis/isodate.git
  track: "*.*.*"
  exclude:
  - "*a*"
  - "*b*"
  - "*rc*"
  - "*docs*"
  ref: 0.7.2-0-g4408b60fecfc682a021047b3e5d9095a8face012
