#! /usr/bin/env bash

set -euox pipefail

BASE_TAG="0.70"
TAG="$(git describe --exclude "${BASE_TAG}-*-*" | sed 's/-/./g')"
git tag "${TAG}"
git push origin "${TAG}"
