# /etc/bash/bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

# Disable completion when the input buffer is empty.  i.e. Hitting tab
# and waiting a long time for bash to expand all of $PATH.
shopt -s no_empty_cmd_completion

# Enable history appending instead of overwriting when exiting.  #139609
shopt -s histappend

# Save each command to the history file as it's executed.  #517342
# This does mean sessions get interleaved when reading later on, but this
# way the history is always up to date.  History is not synced across live
# sessions though; that is what `history -n` does.
# Disabled by default due to concerns related to system recovery when $HOME
# is under duress, or lives somewhere flaky (like NFS).  Constantly syncing
# the history will halt the shell prompt until it's finished.
#PROMPT_COMMAND='history -a'

# Change the window title of X terminals 
case ${TERM} in
	[aEkx]term*|rxvt*|gnome*|konsole*|interix)
		PS1='\[\033]0;\u@\h:\w\007\]'
		;;
	screen*)
		PS1='\[\033k\u@\h:\w\033\\\]'
		;;
	*)
		unset PS1
		;;
esac

# Set colorful PS1 only on colorful terminals.
# dircolors --print-database uses its own built-in database
# instead of using /etc/DIR_COLORS.  Try to use the external file
# first to take advantage of user additions.
# We run dircolors directly due to its changes in file syntax and
# terminal name patching.
use_color=false
if type -P dircolors >/dev/null ; then
	# Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
	LS_COLORS=
	if [[ -f ~/.dir_colors ]] ; then
		eval "$(dircolors -b ~/.dir_colors)"
	elif [[ -f /etc/DIR_COLORS ]] ; then
		eval "$(dircolors -b /etc/DIR_COLORS)"
	else
		eval "$(dircolors -b)"
	fi
	# Note: We always evaluate the LS_COLORS setting even when it's the
	# default.  If it isn't set, then `ls` will only colorize by default
	# based on file attributes and ignore extensions (even the compiled
	# in defaults of dircolors). #583814
	if [[ -n ${LS_COLORS:+set} ]] ; then
		use_color=true
	else
		# Delete it if it's empty as it's useless in that case.
		unset LS_COLORS
	fi
else
	# Some systems (e.g. BSD & embedded) don't typically come with
	# dircolors so we need to hardcode some terminals in here.
	case ${TERM} in
	[aEkx]term*|rxvt*|gnome*|konsole*|screen|cons25|*color) use_color=true;;
	esac
fi

if ${use_color} ; then
	if [[ ${EUID} == 0 ]] ; then
		PS1+='\[\033[01;31m\]\h\[\033[01;34m\] \w \$\[\033[00m\] '
	else
		PS1+='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
	fi

	alias ls='ls --color=auto'
	alias grep='grep --colour=auto'
	alias egrep='egrep --colour=auto'
	alias fgrep='fgrep --colour=auto'
else
	if [[ ${EUID} == 0 ]] ; then
		# show root@ when we don't have colors
		PS1+='\u@\h \w \$ '
	else
		PS1+='\u@\h \w \$ '
	fi
fi

for sh in /etc/bash/bashrc.d/* ; do
	[[ -r ${sh} ]] && source "${sh}"
done

# Try to keep environment pollution down, EPA loves us.
unset use_color sh

set -o vi
bind -m vi-insert "\C-l":clear-screen
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

stty -ixon



export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:/home/tanguy/bin:$PATH"


export LESS_TERMCAP_mb=(printf '\e[01;31m') # enter blinking mode
export LESS_TERMCAP_md=(printf '\e[01;38;5;75m') # enter double-bright mode
export LESS_TERMCAP_me=(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=(printf '\e[0m') # leave standout mode
export LESS_TERMCAP_so=(printf '\e[01;33m') # enter standout mode
export LESS_TERMCAP_ue=(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=(printf '\e[04;38;5;200m') # enter underline mode

export EDITOR='nvim'
#export TERM=rxvt-unicode-256color
#export TERM=xterm-256color
#export PAGER='less'
export PAGER='less -R'
export PANEL_FIFO='/tmp/panel-fifo'

alias ..='cd ..'
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


