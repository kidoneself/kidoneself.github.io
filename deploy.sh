#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn build

# 进入生成的文件夹
cd .vuepress/dist

git config --global user.name "action"
git config --global user.email "8768611@qq.com"
git init
git add -A
git commit -m 'deploy'
git checkout -b gh-pages

# 如果发布到 https://<USElsRNAME>.github.io/<REPO>
git push -f https://github.com/kidoneself/kidoneself.github.io.git master:gh-pages


cd -
