# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/kapnoc/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="sorin"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



#export PATH="/bin:/sbin:/usr/bin:/usr/sbin:/usr/heimdal/bin:/usr/heimdal/sbin:/home/kapnoc/bin:/usr/local/bin:/home/kapnoc/opt/cross/bin:/home/kapnoc/wps:/usr/local/texlive/2016/bin/x86_64-linux/"
export PATH="/usr/local/bin/:/home/kapnoc/bin:$PATH"

export EDITOR='nvim'
#export TERM=rxvt-unicode-256color
#export TERM=xterm-256color
export PAGER='less'
#export PAGER='less -R'
export PANEL_FIFO='/tmp/panel-fifo'
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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

#alias screenfetch="screenfetch -A Raspbian"
echo
fortune
echo
#figlet -c "NORMALFAGS GET OUT REEEEE" | sed 's/^/      /';
#screenfetch -E -A Raspbian;
#neofetch
#echo


append_path_env_var()
{
	ENV_VAR=`printenv $1`
	CONTENT=$2
	if [[ ! -z $ENV_VAR ]]
	then
			CONTENT=$ENV_VAR:${2}
	fi
	export ${1}=$CONTENT
}
### C Graphical Programming Environement Variable
append_path_env_var "LIBRARY_PATH" "/home/kapnoc/.graph_programming/lib"
append_path_env_var "LD_LIBRARY_PATH" "/home/kapnoc/.graph_programming/lib"
append_path_env_var "CPATH" "/home/kapnoc/.graph_programming/include"
