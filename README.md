# General Configuration

## Git
- Copy the following into ~/.bashrc to show git branch name in terminal
```
force_color_prompt=yes
color_prompt=yes
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
 PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
else
 PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
fi
unset color_prompt force_color_prompt
```

- Run the following commands to enhance features in git
```
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.lol "log --graph --decorate --pretty=oneline --abbrev-commit --all"
git config --global alias.mylog "log --pretty=format:'%h %s [%an]' --graph"
git config --global merge.tool vimdiff
git config --global merge.conflictstyle diff3
git config --global diff.tool vimdiff
git config --global alias.d difftool
git config --global mergetool.prompt false # dont copy this if you dont want default
git config --global difftool.prompt false # dont copy this if you dont want default
```
- To compare changes, run the following command
```
git mergetool
```
