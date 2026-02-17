set -x PATH /usr/local/sbin /usr/local/bin ~/go/bin ~/.local/bin $PATH
set -x EDITOR nvim
# Appears this is no longer needed
#set -x SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket
# eval (pyenv init - | source)
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias k="kubectl"
alias kc="kubectx"
alias kn="kubens"
alias t="terraform"
alias config='/usr/bin/git --git-dir=$HOME/code/dotfiles/ --work-tree=$HOME'
alias ff='git merge --ff-only'
