# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH
export SPACK_ROOT="/home/adb/stuff/ncsa/spack"
. $SPACK_ROOT/share/spack/setup-env.sh

#fix for tab completion on git that uses 100%cpu
__git_files () {
    _wanted files expl 'local files' _files
}

export ZSH=/home/adb/.oh-my-zsh
export PATH=$HOME/.gem/ruby/2.5.0/bin:$PATH
export PATH=$HOME/stuff/scripts:$PATH

ZSH_THEME="classyTouch"

plugins=(
  history-substring-search
  git
  vi-mode
  zsh-autosuggestions
  zsh-completions
)

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
source $ZSH/oh-my-zsh.sh
source $HOME/export_spotify.sh

COMPLETION_WAITING_DOTS="true"

#aliases

#EDIT
alias efire='nvim /home/adb/.mozilla/firefox/7xfdmsnj.default/chrome/userChrome.css'
alias cfire='cd /home/adb/.mozilla/firefox/7xfdmsnj.default/chrome/'
alias exres='nvim ~/.Xresources'
alias epoly='nvim ~/.config/polybar/config'
alias ezsh='nvim ~/.zshrc'
alias evim='nvim ~/.config/nvim/init.vim'
alias ebsp='nvim ~/.config/bspwm/bspwmrc'
alias esxh='nvim ~/.config/sxhkd/sxhkdrc'
alias ekit='nvim ~/.config/kitty/kitty.conf'

##TESTING gnuSTOW

#GIT
alias gcom='git commit'
alias gpu='git push origin master'
alias gccom='config commit'
alias gcadd='config add -u'

alias teensy='~/stuff/scripts/teensy'
alias l='exa'
alias ls='exa -l -s newest --group-directories-first'
alias als='ls'
alias goct='octave --gui &'
alias update-grub='grub-mkconfig -o /boot/grub/grub.cfg'
alias mpvr='ls ~/stuff/record/ -Art | tail -n 1 | xargs mpv'
alias byehi='reboot now'
alias byebye='shutdown now'
alias ra='ranger'
alias rcd='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"; rm -d $HOME/.rangerdir'
alias v='nvim'
alias ins='sudo pacman -S'
alias rezsh='source ~/.zshrc'
alias ei3='nvim ~/.config/i3/config'
alias upug='sudo pacman -Syu'
alias upytdl='python ~/stuff/projects/ytdl/ytdl.py'
alias rem='sudo pacman -R'
alias xrdr='xrdb ~/.Xresources'
alias vim='nvim'
alias dot='/usr/bin/git --git-dir=/home/adb/dotfiles/.git --work-tree=/home/adb/dotfiles'
alias pushcfg='dot push github master; dot push gitlab master'
alias 251='cd ~/stuff/sum18/251/scripts/'
alias 212='cd ~/stuff/sum18/212/scripts/'
alias 300='cd ~/stuff/sum18/300'
alias back='feh --bg-scale'
alias cheat=' ~/stuff/scripts/cht.sh python list | bat'
alias dox='make -C ~/stuff/projects/qmk_firmware ergodox_ez:adb; teensy-loader-cli -v -w -mmcu=atmega32u4 ~/stuff/projects/qmk_firmware/ergodox_ez_adb.hex'

export EDITOR=nvim
export POLY_BACK="#80$(xrdb -query | head -n 1 | grep -o '#......' | cut -c 2-)"
export XDG_CONFIG_HOME="$HOME/.config"

#for using aliases in vim
function zshalias()
{
  grep "^alias" ~/.zshrc > ~/.zshenv
}

function edots() {
    dotf=$(find $HOME/dotfiles -path $HOME/dotfiles/.git -prune -o -type f | fzf)
    [[ -z ${dotf} ]] && echo || nvim $dotf
}

wals() {
    wal -n -i "$@"
    feh --bg-tile "$(< "${HOME}/.cache/wal/wal")"
}

(cat ~/.cache/wal/sequences &)
cat ~/.cache/wal/sequences
source ~/.cache/wal/colors-tty.sh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/nvm/init-nvm.sh
#source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
