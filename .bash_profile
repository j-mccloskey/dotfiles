# Prompt
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

# Larger bash history (default is 500)
export HISTFILESIZE=10000
export HISTSIZE=10000
export HISTCONTROL=ignorespace

export CLICOLOR=1
export GREP_OPTIONS='--color=always' 

# Common junk
[[ -s "$HOME/.commonrc" ]] && source "$HOME/.commonrc"

# Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

source <(kubectl completion bash)
source <(helm completion bash)


PATH="/usr/local/bin:$PATH"
[[ -d "$HOME/bin" ]] && export PATH="$HOME/bin:$PATH";

function clear { 
 osascript -e 'tell application "System Events" to keystroke "k" using command down' 
}
