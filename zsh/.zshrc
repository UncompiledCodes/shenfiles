export ZSH="$HOME/.oh-my-zsh"

# zsh theme
ZSH_THEME="muse"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# zsh update reminder
zstyle ':omz:update' mode reminder  

# waiting dots
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
COMPLETION_WAITING_DOTS="true"

# oh-my-zsh plugins
plugins=(git
    history-substring-search
    colored-man-pages
    zsh-autosuggestions
    zsh-syntax-highlighting
#    zsh-vi-mode
    zsh-z       )
source $ZSH/oh-my-zsh.sh

# set edtitor to neovim
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

# aliases
alias vim="nvim"
# alias zshconfig="mate ~/.zshrc"
alias tmp="cd ${HOME}//Documents/tmp"
alias repos="cd ${HOME}/Documents/0xshen/repos"
alias 0="cd ${HOME}/Documents/0xshen"
alias sf="cd ${HOME}/shenfiles"
alias vids="cd ${HOME}/Videos"
alias downs="cd ${HOME}/Downloads"
alias series="cd ${HOME}/Videos/series"
alias gist="git status"
alias gish="git push"
alias giad="git add"
alias gico="git commit -m"
alias nn="amixer -c 0 sset \"Auto-Mute Mode\" Enabled"

# nvm configs
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# go configs
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/bin/python3.10
source /usr/local/bin/virtualenvwrapper.sh

# Load Angular CLI autocompletion.
source <(ng completion script)
