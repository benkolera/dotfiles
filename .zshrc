if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

[[ $TMUX = "" ]] && export TERM="xterm-256color"
bindkey -v

for i in $( find $HOME/.zsh.d/ -type f )
do
  source $i
done
