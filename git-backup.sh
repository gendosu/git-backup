#!/bin/bash
set -e

BACKUPDATE=`date +%Y-%m-%d-%H-%M-%S`

repo_list=`cat repositories.txt`

mkdir -p repositories
cd repositories

for i in ${repo_list[@]}; do
  echo $i
  git clone --bare $i
done

find . -type d -d 1 -not -name .git -exec tar cvfz {}-$BACKUPDATE.tgz {} \;

