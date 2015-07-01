#!/bin/bash
# ------------------------------------------------------------------
# Author: Anuj Sharma
# Date: 1st July 2015
# ------------------------------------------------------------------
#
# This scripts executes git commands on subdirectories recursively.
# The commands which you want to execute need to be added in the
# commands file like "git pull" etc


SCRIPT_PATH="$(dirname -- "$(readlink -f -- "$0")")"

spaces=IFS
IFS="
"
for GIT_COMMAND in $(cat $SCRIPT_PATH/commands); do
  
    find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && $GIT_COMMAND" \;

done
IFS=$spaces

