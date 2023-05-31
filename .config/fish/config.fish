set -x PATH /usr/local/sbin /usr/local/bin ~/go/bin $PATH
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
alias t11='/usr/local/opt/terraform@0.11/bin/terraform'
alias config='/usr/bin/git --git-dir=$HOME/code/dotfiles/ --work-tree=$HOME'
alias ext="xrandr --output HDMI-0 --auto --right-of eDP-1-1 --scale 2x2; xinput --map-to-output 'Wacom Pen and multitouch sensor Finger' eDP-1-1"
alias dext="xrandr --output DVI-I-2-1 --auto --right-of eDP-1-1 --scale 2x2; xinput --map-to-output 'Wacom Pen and multitouch sensor Finger' eDP-1-1"
alias uext="xrandr --output DP-1 --auto --right-of eDP-1-1 --scale 2x2; xinput --map-to-output 'Wacom Pen and multitouch sensor Finger' eDP-1-1"
alias deckout="git checkout (basename (git symbolic-ref refs/remotes/origin/HEAD))"
