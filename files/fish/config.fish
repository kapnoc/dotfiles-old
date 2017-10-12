#!/usr/bin/env fish

set PATH /home/tanguy/bin $PATH

set LS_COLORS "rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:"

export LESS_TERMCAP_mb=(printf '\e[01;31m') # enter blinking mode
export LESS_TERMCAP_md=(printf '\e[01;38;5;75m') # enter double-bright mode
export LESS_TERMCAP_me=(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=(printf '\e[0m') # leave standout mode
export LESS_TERMCAP_so=(printf '\e[01;33m') # enter standout mode
export LESS_TERMCAP_ue=(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=(printf '\e[04;38;5;200m') # enter underline mode

export EDITOR='vis'
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
alias mm='make -j9'
alias ccat='pygmentize -g -O style=colorful,linenos=1'

fish_vi_key_bindings
#fish_default_key_bindings

set fish_cursor_default underscore
set fish_cursor_insert underscore
set fish_cursor_visual underscore

function fish_mode_prompt
  # NOOP - Disable vim mode indicator
end
