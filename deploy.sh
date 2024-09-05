#!/bin/bash

set -o errexit
set -o xtrace

git branch -D docs | true
git checkout -b docs
zola build
mv public docs
git add docs
git commit -m "deploy: deploy site"
git push -f --set-upstream origin docs
git checkout master
