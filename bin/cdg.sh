#!/bin/bash

DIR_DEPTH=`grep -o "/" <<< $(pwd) |wc -l`

goToDir() {
NEW_DIR=`pwd | grep -P -o "^\/(\S+?\/){$1}"`
    cd $NEW_DIR
}

if [[ $# -eq 0 ]];
 then
    pwd
 else
    if [[ $1 -ge 1 ]];
     then
        if [[ $1 -lt $DIR_DEPTH ]] && [[ $1 -ge 1 ]]
         then
            goToDir $1
         else
            echo "You are already on top of the world."
        fi
    elif [[ $1 -le 0 ]]
     then
        X=$(expr $DIR_DEPTH + $1)
        if [[ $X -ge 0 ]]
         then
            goToDir $X
         else
            echo "Value passed is too low."
        fi
    fi
 fi
