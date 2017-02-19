HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=10000
setopt appendhistory share_history histignorealldups autocd extendedglob nomatch notify

unsetopt beep
bindkey -v

zstyle :compinstall filename '/home/bkolera/.zshrc'
zstyle ':completion:*' menu select
zstyle ':completion:*:default'         list-colors ${(s.:.)LS_COLORS}

autoload -U url-quote-magic
zle -N self-insert url-quote-magic

autoload -Uz compinit && compinit

source /usr/share/zsh/scripts/antigen/antigen.zsh
PATH="$HOME/bin:$PATH"

antigen use oh-my-zsh

antigen theme steeef
antigen bundle ssh-agent
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply
