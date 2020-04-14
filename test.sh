#!/usr/bin/env bash

set -ex

git checkout master
git checkout -b pre-merge-master
git merge --strategy-option theirs -m"pre-merge-master from develop and use theirs for test," origin/develop

git push --set-upstream origin pre-merge-master

git checkout develop
