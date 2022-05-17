#!/bin/sh

log () {
  echo "$dir: $1"
}

# for each repository in current folder do
for dir in */; do
  cd $dir

  log "git checkout main"
  git checkout main
  git pull

  log "git delete-remote-branches"
  git delete-remote-branches

  sleep 2
  log "finished"
  echo ""
  sleep 2
  cd ..
done
