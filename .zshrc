export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

HYPHEN_INSENSITIVE="true"

HIST_STAMPS="mm/dd/yyyy"

plugins=(
  git
  brew
  history
  zsh-autosuggestions
  zsh-completions
)

ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh


# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='✨ %F{blue}%2~%f  %F{magenta}${vcs_info_msg_0_}%f $ '

alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias rebash="source ~/.zshrc"
alias gitconfig="code ~/.gitconfig"
alias code="code --disable-gpu"

alias delete="git branch -D"

alias simpleserver="python -m SimpleHTTPServer"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#e6c000,underline"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
