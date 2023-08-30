#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex

git add -u
git commit -m "release"
npm version patch
git push
npm publish --access=public
