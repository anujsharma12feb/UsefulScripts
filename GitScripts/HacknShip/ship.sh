#!/bin/sh 
# ------------------------------------------------------------------
# Author: Anuj Sharma
# Date: 5th July 2015
# ------------------------------------------------------------------
#
# This scripts is a quick way to merge your current branch to master, 
# and push the result to the central repository branch called origin/master
#
# Exit if any error is encountered:
set -o errexit

CURRENT=`git branch | grep '\*' | awk '{print $2}'`
git checkout master
git merge ${CURRENT}
git push origin master
git checkout ${CURRENT}
