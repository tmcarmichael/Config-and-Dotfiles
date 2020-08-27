if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/thomascarmichael/.oh-my-zsh"
export UPDATE_ZSH_DAYS=10
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete" 
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git colored-man-pages colorize brew osx zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

export LS_COLORS='no=00:fi=00:di=04;35:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# ALIAS
alias zshrc="vs ~/.zshrc && source ~/.zshrc"
alias omzrc="vs ~/.oh-my-zsh && source ~/.oh-my-zsh"
alias gitrc="vs ~/.gitconfig && source ~/.gitconfig"
alias genv="git config --list"
alias l="ls -GlaFh"
alias ll="ls -GlwF"
alias lh='ls -a | grep "^\."'
alias hg="history | grep"
alias ..="cd .."
alias ...="cd ../.."
alias .l="cd ..;l"
alias f="find . -name"
alias t1="tree -C -L 1 -I 'node_modules' --filelimit 20 ."
alias t2="tree -C -L 2 -I 'node_modules' --filelimit 20 ."
alias t3="tree -C -L 3 -I 'node_modules' --filelimit 20 ."
alias vs="code ."
alias rmb="git branch --merged | grep -v '(^\*|master|dev)' | xargs git branch -d"
alias bu="brew update && brew upgrade && brew cleanup"
alias npmscripts='cat package.json | grep "scripts\"" -A30 | tail -n 30 | grep "[}][,]" -B30 | tail -n 30 | grep "[\"][a-z-]*[\"][:]"'

# FUNCTIONS
function cd {
    builtin cd "$@" && ls
}

# Functions to save quick access dirs
function setcur1()
{
    echo Saving this directory... $(pwd)
    echo > ~/scripts/curr1.txt
    echo $(pwd) > ~/scripts/curr1.txt
}
function setcur2()
{
    echo Saving this directory... $(pwd)
    echo > ~/scripts/curr2.txt
    echo $(pwd) > ~/scripts/curr2.txt
}

# Functions to switch to saved dirs
function cur1()
{
    echo Changing to saved directory...
    value=`cat /Users/thomascarmichael/scripts/curr1.txt`
    cd $value
}
function cur2()
{
    echo Changing to saved directory...
    value=`cat /Users/thomascarmichael/scripts/curr2.txt`
    cd $value
}

# SOURCE
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /Users/thomascarmichael/.oh-my-zsh/custom/themes/powerlevel10k
