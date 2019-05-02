#!/bin/bash

current_branch=$1

# Go to current branch
git checkout -b "${current_branch}"
echo "Checkout to ${current_branch}"

# Returns the names of all the local branches
local_branches() {
  git for-each-ref --format="%(refname:short)" refs/heads
}

for branch in $(local_branches); do
  git merge ${branch} 
done

echo "All branches is merge into ${current_branch}"
