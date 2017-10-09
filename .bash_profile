export GITHUB_USERNAME="jasonlafferty"
export PATH="/usr/local/sbin:$PATH"
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"
export VISUAL="nvim"
export EDITOR="$VISUAL"
# Load the shell dotfiles
for file in ~/.{bashrc,bash_prompt,aliases}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Auto complete for git
if [ -f ~/.config/git/.git-completion.bash ]; then
	. ~/.config/git/.git-completion.bash
fi

# Gocardless
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

for file in ~/.local/gocardless/.{datadog.sh,exports}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='ag -g ""'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

