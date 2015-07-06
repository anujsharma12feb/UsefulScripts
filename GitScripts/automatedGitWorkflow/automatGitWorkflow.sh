#!/bin/bash
# ------------------------------------------------------------------
# Author: Anuj Sharma
# Date: 6th July 2015
# ------------------------------------------------------------------
#
# This scripts automates the git workflow:
# -> It will ask the user to enter the desired commit-msg 
# -> Add all the unstaged/untracked changes to stage area
# -> Commit the changes
# -> Push the commits to active working branch
#
# Exit if any error is encountered:
set -o errexit

# It will give the current working branch
CURRENT=`git branch | grep '\*' | awk '{print $2}'`

echo -n "Please enter your commit-msg >"
read text

git add . 
git commit -m "$text"
git push origin $CURRENT
