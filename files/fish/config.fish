#!/usr/bin/env fish

set  PATH /home/tanguy/bin $PATH

export EDITOR='nvim'
#export TERM=rxvt-unicode-256color
#export TERM=xterm-256color
export PAGER='less'
#export PAGER='less -R'
export PANEL_FIFO='/tmp/panel-fifo'

alias ls='ls --color=always'
alias tree='tree -C'
alias ll='ls -l'
alias la='ls -la'
alias j='jobs'
#alias emacs='emacs -nw'
alias ne='emacs -nw'
alias ee='peped'
alias ff='fug'
alias vv='vim-huge'
alias vv='nvim'

alias dwarffortress='LD_PRELOAD=/usr/lib/libz.so.1 ~/df_linux/df'
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state|to\ full|percentage"'
#alias lock="xlock -mode swirl -count 200"
#alias lock="scrot ~/tmp/lock.png ; convert ~/tmp/lock.png -blur 0x3 ~/tmp/lockblur.png ; i3lock -i ~/tmp/lockblur.png"
#alias lck="xlock -mode rain"
#alias lck="i3lock -i ~/Pictures/Wallpapers/wallpaper2.png"
alias susp="sudo s2ram ; lck"
alias aled="startx -- vt1"
alias aled-gcc="i686-elf-gcc"
alias oskour="mr_clean ; make fclean"
alias screenfetch="screenfetch -E"
alias mm='make -j5'
alias ccat='pygmentize -g -O style=colorful,linenos=1'

fish_vi_key_bindings
