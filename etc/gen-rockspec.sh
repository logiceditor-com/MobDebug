#! /usr/bin/env bash

set -euox pipefail

VERSION="$(git describe | sed 's/-/./g')"
RESULT_ROCKSPEC="rockspec/mobdebug-${VERSION}-1.rockspec"
cat rockspec/mobdebug-scm-1.rockspec | \
  sed "s/scm-1/${VERSION}-1/g" | \
  sed "s/master/${VERSION}/g" > \
  "${RESULT_ROCKSPEC}"
git add "${RESULT_ROCKSPEC}"
git commit -m "add ${RESULT_ROCKSPEC}"
git push
