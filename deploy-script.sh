#!/bin/bash
set -o errexit
set -x
git status
git remote -v
ls -lah

# config
git config --global user.email "nobody@nobody.org"
git config --global user.name "Travis CI"

# build
rm class-pins.topojson
mv newmap.topojson class-pins.topojson

# deploy
git add -A
git commit -m "Deploy to Github Pages"
git push --force --quiet "https://${GITHUB_TOKEN}@github.com/${GITHUB_REPO}.git" HEAD:gh-pages

rm mymap.topojson
touch mymap.topojson
git add -A
git commit -m "reset"
git push --force --quiet "https://${GITHUB_TOKEN}@github.com/${GITHUB_REPO}.git" HEAD:master
