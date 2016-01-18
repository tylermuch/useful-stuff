# Push only the current branch (as opposed to 'matching' which push all branches that match the name of a remote branch and merges them)
git config --global push.default simple

# Branches automatically track their branching point
git config --global branch.autoSetupMerge always

# git pull always rebases
git config --global branch.autoSetupRebase always

# Equivalent of giving --no-ff option to all merges. Creates an extra merge commit always.
# git config --global merge.ff false

# Automatically create a temporary stash before the rebase begins and then apply it after the rebase is finished
# git config --global rebase.autoStash true

export GIT_EDITOR=vim
