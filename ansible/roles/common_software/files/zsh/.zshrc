export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

### My aliases
alias vi=nvim
alias vim=nvim

### My configs
# vi mode
bindkey -v

# Add "/" to ".." when hitting tab
zstyle ':completion:*' special-dirs true

### Golang config
export GOVERS="1.9.2"
export GOROOT="$HOME/go/$GOVERS"
export GOPATH="$HOME/workspace/gopath"

export PATH="${GOPATH}/bin:${GOROOT}/bin:$PATH"
