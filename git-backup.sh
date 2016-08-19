#!/bin/bash

repo_list=(
  "git@github.com:gendosu/git-backup.git"
)

for i in ${repo_list[@]}; do
  echo $i
  git clone --bare $i
done

find . -type d -d 1 -exec tar cvfz {}.tgz {} \;

