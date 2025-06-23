#
# ~/.bashrc
#

# if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#     exec startx
# fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Arch Blue for directories (color 39)
export LS_COLORS="di=38;5;39"

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Git branch with icon
parse_git_branch() {
  git_branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  if [ -n "$git_branch" ]; then
    echo -e " \033[38;5;214m $git_branch\033[0m"
  fi
}

# Arch Linux icon in blue
arch_icon="\[\033[38;5;39m\]\[\033[0m\]"

# Custom prompt: [user@hostname full_path] [git_icon branch_name]
PS1='\[\033[38;5;39m\]\[\033[0m\] [\u@\h \w]$(parse_git_branch) '

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
export FZF_DEFAULT_OPTS='--color=pointer:blue'
source /usr/share/fzf/key-bindings.bash

# Aliases
alias srcb='source .bashrc'
alias p='sudo pacman'
alias t='tree'
alias py='python'
alias rmrf='sudo rm -rf'
alias activate='_activate () { source "$1"/bin/activate; };_activate'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias start='_start () { sudo systemctl start --now "$1";};_start'
alias stop='_stop () { sudo systemctl stop --now "$1";};_stop'
alias enable='_enable () { sudo systemctl enable --now "$1";};_enable'
alias disable='_disable () { sudo systemctl disable --now "$1";};_disable'
alias enable='_enable () { sudo systemctl enable --now "$1";};_enable'
alias status='_status () { sudo systemctl status "$1";};_status'
alias sync_time='timedatectl set-ntp true'
alias update='sudo pacman -Syu'
alias cls='clear && printf "\e[3J"'

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 