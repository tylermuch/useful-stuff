# Pretty git log
#
# * ec41322 (HEAD, origin/master, master) Changes files to .sh extension so we get pretty syntax highlighting [tylermuch@gmail.com]
# * 117d449 Add empty bash_aliases and git_aliases files [tylermuch@gmail.com]
#
git config --global --add alias.lg '!f() { LEN=$1; if [ -z "$LEN" ]; then LEN=50; else shift; fi; git --no-pager log -$LEN --graph --pretty=format:"%C(yellow)%h%C(auto)%d %Creset%s %C(238)[%ce]%Creset" --abbrev-commit --decorate --all $*; echo ""; }; f'


# Git status without showing untracked files
git config --global --add alias.s 'status'
