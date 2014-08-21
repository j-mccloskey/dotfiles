# Prompt
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

# Boxen
[[ -f "/opt/boxen/env.sh" ]] && source "/opt/boxen/env.sh"

# Larger bash history (default is 500)
export HISTFILESIZE=10000
export HISTSIZE=10000

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Common junk
[[ -s "$HOME/.commonrc" ]] && source "$HOME/.commonrc"

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

PATH="/usr/local/bin:$PATH"

