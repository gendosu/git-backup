#!/bin/bash

BACKUPDATE=`date +%Y-%m-%d-%H-%M-%S`

repo_list=(
  "git@github.com:gendosu/git-backup.git"
)

for i in ${repo_list[@]}; do
  echo $i
  git clone --bare $i
done

find . -type d -d 1 -not -name .git -exec tar cvfz {}-$BACKUPDATE.tgz {} \;

