#!/bin/sh

log () {
  echo "$dir: $1"
}

gdel() {
  git fetch -p && for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do git branch -D $branch; done
}

# for each repository in current folder do
for dir in */; do
  cd $dir

  log "git checkout main"
  git checkout main
  git pull
  gdel

  sleep 2
  log "finished"
  echo ""
  sleep 2
  cd ..
done
