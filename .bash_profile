# Prompt
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

[[ -s "/usr/local/etc/grc.bashrc" ]] && source /usr/local/etc/grc.bashrc

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
complete -C /usr/local/Cellar/terraform/0.11.13/bin/terraform terraform

PATH="/usr/local/bin:$PATH"
[[ -d "$HOME/bin" ]] && export PATH="$HOME/bin:$PATH";

function clear { 
 osascript -e 'tell application "System Events" to keystroke "k" using command down' 
}

function aws_ip_from_private_dns_name() {
     echo $(aws ec2 describe-instances --filters "{\"Name\":\"private-dns-name\", \"Values\":[\"$1*\"]}" --query='Reservations[0].Instances[0].PublicIpAddress' ) | tr -d '"'
}

eval "$(nodenv init -)"
