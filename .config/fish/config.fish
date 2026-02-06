set -x PATH /usr/local/sbin /usr/local/bin ~/go/bin /opt/homebrew/share/google-cloud-sdk/bin $PATH
set -x EDITOR nvim
set -x GOPRIVATE "*.cds.internal.unity3d.com,github.com/Unity-Technologies"
set -x USE_GKE_GCLOUD_AUTH_PLUGIN True
set -x SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket
set -x VAULT_ADDR https://vault.corp.unity3d.com
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
