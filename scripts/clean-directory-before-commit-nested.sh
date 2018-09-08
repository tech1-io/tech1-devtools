#!/usr/bin/env bash

#set -x

for f in $(pwd)/*;
  do 
     #[ -d $f ] && cd "$f" && echo Entering folder: $f
     [ -d $f ] && cd "$f" && echo Entering folder: $f && du -sh .
     #[ -d $f ] && cd "$f" && echo Entering folder: $f && clean-directory-before-commit.sh
  done;