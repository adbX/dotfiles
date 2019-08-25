#fix for tab completion on git that uses 100%cpu
__git_files () {
    _wanted files expl 'local files' _files
}

eval "$(rbenv init -)"
export ZSH=/Users/adb/.oh-my-zsh
export PATH=/Library/TeX/texbin:$PATH
ZSH_THEME="classyTouch"

plugins=(
  zsh-syntax-highlighting
  history-substring-search
  git
  vi-mode
  zsh-autosuggestions
  zsh-completions
)

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
source $ZSH/oh-my-zsh.sh

COMPLETION_WAITING_DOTS="true"

#EDIT
alias ezsh='nvim ~/.zshrc'
alias evim='nvim ~/.config/nvim/init.vim'

#GIT
alias gcom='git commit'
alias gpu='git push origin master'
alias gccom='config commit'
alias gcadd='config add -u'

alias byehi='reboot now'
alias byebye='shutdown now'
alias ra='ranger'
alias rcd='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"; rm -d $HOME/.rangerdir'
alias v='nvim'
alias vim='nvim'
alias rezsh='source ~/.zshrc'
alias upug='brew update; brew upgrade'
alias python2='python2.7'

export EDITOR=nvim

function edots() {
    dotf=$(find $HOME/dotfiles -path $HOME/dotfiles/.git -prune -o -type f | fzf)
    [[ -z ${dotf} ]] && echo || nvim $dotf
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/adb/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/adb/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/adb/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/adb/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
