[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias config='/usr/bin/git --git-dir=/Users/jason/.cfg/ --work-tree=/Users/jason'

# tabtab source for yarn package
# uninstall by removing these lines or running `tabtab uninstall yarn`
[ -f /Users/jason/.config/yarn/global/node_modules/tabtab/.completions/yarn.bash ] && . /Users/jason/.config/yarn/global/node_modules/tabtab/.completions/yarn.bash