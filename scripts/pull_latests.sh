# custom logger
custom_log() {
  echo "progress $count/$nr_repos: $1"
}

# for each repository in current folder do
count=0
nr_repos=$(ls | wc -l)
nr_repos=$((nr_repos-1)) # remove the pull_latests.sh from count
for dir in */; do
  count=$((count+1))
  cd $dir

  custom_log "pulling latest changes $dir"
  git checkout main --quiet
  git pull --quiet
  
  custom_log "pruning old branches"
  git prune-branches

  sleep 2
  custom_log ""
  sleep 2
  cd ..
done
