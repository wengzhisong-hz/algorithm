#!/usr/bin/env sh
set -e

npm run build
git add .
git commit -m 'deploy'
git push -f git@github.com:wengzhisong-hz/leetcode.git master

cd docs/.vuepress/dist
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:wengzhisong-hz/leetcode.git master:gh-pages

cd -
