# Aliases 
# ---------------------------------------------------

# Easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Shortcuts
alias drp="cd ~/Documents/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/Projects"
alias g="git"
alias h="history"
alias j="jobs"
alias v="vim"
alias o="open"
alias oo="open ."
alias c="clear"

# When the internet goes down
alias fixinternet="sudo ifconfig en0 down; sudo ifconfig en0 up"
# Look Up Public Key
alias publickey="cat ~/.ssh/id_rsa.pub"
# Open SSH Config
alias sshconfig="subl ~/.ssh/config"
# Open Bash Profile
alias bashprofile="subl ~/.bash_profile"
# Save Bash Profile
alias rebash="source ~/.bash_profile"
# Open Hosts File
alias hosts="subl /etc/hosts"
# Open Git Config
alias gitconfig="subl ~/.gitconfig"
# Open files in Sublime Text by Default
export EDITOR='subl -w'
# Map Textmate command to Sublime because I can't stop doing it
alias mate='subl -w'

# Look up IP
alias myip='ifconfig|grep -A 4 "en0"|grep "inet "'

# ==== Rbenv ====
function rbenv_version() {
  rbenv version 2> /dev/null | sed 's/\([^ ]*\).*/(\1)/'
}


# Git
# ---------------------------------------------------

# Git Completion
source /usr/local/etc/bash_completion.d/git-completion.bash

# New Branch
alias newbranch="git co -b"

# Delete Branch
alias deletebranch="git branch -D"

# Set Remote URL
alias seturl="git remote set-url"

# new remote
alias newremote="git remote add"

# Prompt with git branch
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
WHITE="\[\033[1;37m\]"
BLACK="\[\033[0;30m\]"
OFF="\[\033[0m\]"

source ~/.git-prompt.sh


# Nginx
# ---------------------------------------------------

alias restart_nginx='launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist && launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist;'

alias find_nginx='ps aux | grep nginx | grep master'


# Command Line 
# ---------------------------------------------------
export PS1="$RED\$(rbenv_version)\[\033[0m\] $GREEN\w$YELLOW\$(__git_ps1 "[%s]")$OFF \$ "



# RVM
# ---------------------------------------------------
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.


# Homebrew paths
# ---------------------------------------------------
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH

export CC=/usr/local/bin/gcc-4.2
