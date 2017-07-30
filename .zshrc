# 環境変数
export LANG=ja_JP.UTF-8
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH:/usr/local/bin

PROMPT="%{${fg[green]}%}[%n]%{${reset_color}%} %~ %# "

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

bindkey -v
bindkey '^R' history-incremental-pattern-search-backward

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=100000
setopt share_history
setopt hist_ignore_space
setopt hist_reduce_blanks

# vcs_info
# git等のバージョン管理の情報をプロンプトに表示するためのshell function
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%F{green}%1v%f|)"

# 色の設定
autoload -Uz colors
colors

# 補完の設定
autoload -U compinit
compinit
setopt auto_menu

setopt no_beep
setopt interactive_comments

alias ll='ls -la'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias sudo='sudo '
alias g='git'
alias gco='git checkout'
alias gc='git commit'
alias gs='git status'
alias gg='git grep -e'
alias gd='git diff'
alias ga='git add'
alias gl='git log'
alias gb='git branch'
alias gdc='git diff --cached'
alias be='bundle exec'
alias ctags="`brew --prefix`/bin/ctags"
alias pixiv='cd ~/work/pixiv'
alias plaza='cd ~/dev/src/plaza'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/mvim "$@"'

eval "$(rbenv init -)"
eval "$(nodenv init -)"
