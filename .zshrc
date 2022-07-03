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

# directory listing colors: best for dark background
export LSCOLORS="ExFxCxDxBxegedabagacad"
export LS_COLORS="di=1;34:ln=1;35:so=1;32:pi=1;33:ex=1;31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

# directory listing colors: best for light background
# export LSCOLORS="exfxcxdxbxegedabagacad"
# export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

alias ls='ls --color=auto'
alias vi='vim'
alias tmux='tmux -2'

[[ $TMUX = "" ]] && export TERM="xterm-256color"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
