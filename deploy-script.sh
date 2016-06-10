#!/bin/bash
set -o errexit
set -x
git status
git remote -v
ls -lah

eval "$(ssh-agent -s)" #start the ssh agent
chmod 600 traviskey # this key should have push access
ssh-add traviskey

# config
git config --global user.email "nobody@nobody.org"
git config --global user.name "Travis CI"

# build
rm class-pins.topojson
mv newmap.topojson class-pins.topojson

# deploy
git add class-pins.topojson
git commit -m "Deploy to Github Pages [ci skip]"
#git push --force --quiet HEAD:gh-pages
git push --force --quiet "git@github.com:${GITHUB_REPO}.git" HEAD:gh-pages
