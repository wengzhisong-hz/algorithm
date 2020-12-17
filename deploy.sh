#!/usr/bin/env sh
set -e

git add .
git commit -m 'deploy'
git push -f git@github.com:wengzhisong-hz/leetcode.git master

git branch -D gh-pages || git checkout gh-pages
git checkout gh-pages || git checkout -b gh-pages
npm run build
cd docs/.vuepress/dist
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:wengzhisong-hz/leetcode.git master:gh-pages

cd -
