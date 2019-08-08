set -x PATH /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin /usr/local/sbin /usr/local/bin ~/go/bin $PATH
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x EDITOR nvim
eval (pyenv init - | source)
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias k="kubectl"
alias t="terraform"
alias t11='/usr/local/opt/terraform@0.11/bin/terraform'
alias config='/usr/bin/git --git-dir=$HOME/code/dotfiles/ --work-tree=$HOME'
