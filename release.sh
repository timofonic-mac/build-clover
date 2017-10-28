#!/usr/bin/env bash

NOW_DATE=`date +%F`

github-release release \
  -u acer-k50 \
  -r Clover \
  -t ${VERSION} \
  -n ${VERSION} \
  -d "${NOW_DATE} Automated Build kexts By Travis CI"

github-release release \
  -u acer-k50 \
  -r build-clover \
  -t ${VERSION} \
  -n ${VERSION} \
  -d "${NOW_DATE} Automated Build kexts By Travis CI"

github-release upload \
  -u acer-k50 \
  -r Clover \
  -t ${VERSION} \
  -n ${VERSION}.zip \
  -f ~/src/edk2/Clover/CloverPackage/sym/${VERSION}.zip

github-release upload \
  -u acer-k50 \
  -r build-clover \
  -t ${VERSION} \
  -n ${VERSION}.zip \
  -f ~/src/edk2/Clover/CloverPackage/sym/${VERSION}.zip
