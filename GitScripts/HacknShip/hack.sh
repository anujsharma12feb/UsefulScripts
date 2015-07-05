#!/bin/sh 
# ------------------------------------------------------------------
# Author: Anuj Sharma
# Date: 5th July 2015
# ------------------------------------------------------------------
#
# This scripts pulls down the latest changes from the central origin/master branch,
# and rebases your local feature-branch on this new master. The end result is all 
# the latest changes are integrated, and you will be able to push your commits without
# adding an unnecessary merge-commit to the shared history.
# 
# 
# Exit if any error is encountered:
set -o errexit

CURRENT=`git branch | grep '\*' | awk '{print $2}'`
git checkout master
git pull --rebase origin master
git checkout ${CURRENT}
git rebase master
