# install zgenom
if [[ ! -d ~/.zgenom ]]; then
    git clone https://github.com/jandamm/zgenom ~/.zgenom
fi

source ~/.zgenom/zgenom.zsh
zgenom autoupdate

if ! zgenom saved || test ~/.zshrc -nt $ZGEN_INIT; then
    zgenom load romkatv/powerlevel10k powerlevel10k
    zgenom load zsh-users/zsh-autosuggestions
    zgenom load zsh-users/zsh-syntax-highlighting
    zgenom save
fi

alias vi='vim'
alias tmux='tmux -2'

[[ $TMUX = "" ]] && export TERM="xterm-256color"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
