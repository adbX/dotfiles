
#aliases

#EDIT
alias efire='nvim /home/adb/.mozilla/firefox/7xfdmsnj.default/chrome/userChrome.css'
alias cfire='cd /home/adb/.mozilla/firefox/7xfdmsnj.default/chrome/'
alias exres='nvim ~/.Xresources'
alias epoly='nvim ~/.config/polybar/config'
alias ezsh='nvim ~/.zshrc'
alias evim='nvim ~/.config/nvim/init.vim'
alias etmux='nvim ~/.tmux.conf'
alias ebsp='nvim ~/.config/bspwm/bspwmrc'
alias esxh='nvim ~/.config/sxhkd/sxhkdrc'
alias ekit='nvim ~/.config/kitty/kitty.conf'

#GIT
alias gcom='git commit'
alias gpu='git push origin master'
alias gccom='config commit'
alias gcadd='config add -u'

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
alias config='/usr/bin/git --git-dir=/home/adb/.cfg/ --work-tree=/home/adb'
alias pushcfg='config push github master; config push gitlab master'
alias 251='cd ~/stuff/sum18/251/scripts/'
alias 212='cd ~/stuff/sum18/212/scripts/'
alias 300='cd ~/stuff/sum18/300/scripts/'
alias back='feh --bg-scale'

