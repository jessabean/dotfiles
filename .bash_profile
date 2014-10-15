# Open files in Sublime Text by Default
export EDITOR='subl -w'

# Aliases
# ---------------------------------------------------

# Map Textmate command to Sublime because I can't stop doing it
alias mate='subl'

# Open SSH config
alias sshconfig="subl ~/.ssh/config"

# Open bashprofile
alias bashprofile="subl ~/.bash_profile"

# Save bashprofile
alias rebash="source ~/.bash_profile"

# Open hosts file
alias hosts="subl /etc/hosts"

# Open gitconfig
alias gitconfig="subl ~/.gitconfig"

# Look up IP
alias myip='ifconfig|grep -A 4 "en0"|grep "inet "'

# Look up public key
alias publickey="cat ~/.ssh/id_rsa.pub"

# Flush memcached
alias flush='echo "flush_all" | nc 127.0.0.1 11211'

# Bundle exec
alias be="bundle exec"

# Git
# ---------------------------------------------------

# New branch
alias newbranch="git co -b"

# Delete branch
alias deletebranch="git branch -D"

# Set remote URL
alias seturl="git remote set-url"

# New remote
alias newremote="git remote add"

# Functions
# ---------------------------------------------------

# Start an HTTP server from a directory, optionally specifying the port (via Dave Mosher)
function server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"
  # Set the default Content-Type to `text/plain` instead of `application/octet-stream`
  # And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
  python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

function rbenv_version() {
  rbenv version 2> /dev/null | sed 's/\([^ ]*\).*/(\1)/'
}

# Customizing Terminal
# ---------------------------------------------------
source ~/.git-prompt.sh

# Colors
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
CYAN="\[\033[0;36m\]"
MAGENTA="\[\033[0;35m\]"
WHITE="\[\033[1;37m\]"
BLACK="\[\033[0;30m\]"
OFF="\[\033[0m\]"

# Bash prompt
export PS1="$RED\$(rbenv_version)\[\033[0m\] $GREEN\w$YELLOW\$(__git_ps1 "[%s]")$OFF \$ "
