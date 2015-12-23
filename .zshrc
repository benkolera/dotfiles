if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export SHELL=/usr/local/bin/zsh
export PATH="$HOME/bin:/usr/local/bin:$PATH"
[[ $TMUX = "" ]] && export TERM="xterm-256color"

for i in $( find $HOME/.zsh.d/ -type f )
do
  source $i
done
