# Pretty git log
#
# * ec41322 (HEAD, origin/master, master) Changes files to .sh extension so we get pretty syntax highlighting [tylermuch@gmail.com]
# * 117d449 Add empty bash_aliases and git_aliases files [tylermuch@gmail.com]
#
git config --global --add alias.lg '!f() { LEN=$1; if [ -z "$LEN" ]; then LEN=50; else shift; fi; git --no-pager log -$LEN --graph --pretty=format:"%C(yellow)%h%C(auto)%d %Creset%s %C(238)[%ce]%Creset" --abbrev-commit --decorate --all $*; echo ""; }; f'

# Git status without showing untracked files
git config --global --add alias.s 'status'

# Add this in the [alias] section of ~/.gitconfig
# Don't feel like un/re-escaping stuff to make the actual command
# This will remove the yellow "tag: xxx" refs from the git lg output
#	lgt = "!f() { LEN=$1; if [ -z \"$LEN\" ]; then LEN=50; else shift; fi; git --no-pager log -$LEN --graph --pretty=format:\"%C(yellow)%h%C(auto)%d %Creset%s %C(238)[%ce]%Creset\" --abbrev-commit --decorate --all $* | sed -E \"s,$(printf '\\033')\\\\[1;33mtag: [[:alpha:]]+\\.[[:alpha:]]+-v[[:digit:]]+\\.[[:digit:]]+($(printf '\\033')\\[m$(printf '\\033')\\[33m\\, )?,,g\" | sed -E \"s,$(printf '\\033')\\\\[33m \\($(printf '\\033')\\[m$(printf '\\033')\\[m$(printf '\\033')\\[33m\\),,g\"; echo \"\"; }; f"
