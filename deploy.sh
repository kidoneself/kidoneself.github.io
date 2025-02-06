#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn build

# 进入生成的文件夹
cd .vuepress/dist

git init
git add -A
git commit -m 'deploy'
git checkout -b gh-pages

# 如果发布到 https://<USElsRNAME>.github.io/<REPO>
git push -f https://github.com/kidoneself/kidoneself.github.io.git main:gh-pages


cd -