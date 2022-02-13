# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Language
export LANG=en_US.utf8


# Ranger default editor
export VISUAL=nano

# Sxhkd
export SXHKD_SHELL=/bin/bash

#XDG_CONFIG_HOME
export XDG_CONFIG_HOME=$HOME/.config 

# Default PATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:$HOME/.local/bin

#PATH ISD

#AdoptOpenJDK11
export JAVA_HOME=/usr/lib/jvm/java-11-adoptopenjdk
PATH=$JAVA_HOME/bin:$PATH

#Maven
MAVEN_HOME=$HOME/software/apache-maven-3.8.2
PATH=$MAVEN_HOME/bin:$PATH
export MAVEN_OPTS="-Xms512m -Xmx1024m"

#Intellij
IDEA_HOME=$HOME/software/idea
PATH=$IDEA_HOME/bin:$PATH
##Fix gray screen on bspwm
export _JAVA_AWT_WM_NONREPARENTING=1

#PulseSecure
PULSE_HOME=/opt/pulsesecure
PATH=$PULSE_HOME/bin:$PATH

# CTF
## exiftool
EXIF_HOME=/home/jorge/ctf/tools/exiftool
PATH=$EXIF_HOME:$PATH

#Tools
PAPERVIEW_HOME=/home/jorge/tools/paperview
PATH=$PAPERVIEW_HOME:$PATH

# Rust
. "$HOME/.cargo/env"

#my scripts
SCRIPTS_HOME=/home/jorge/scripts
PATH=$SCRIPTS_HOME:$PATH

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/david/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Default aliases
alias la='ls -A'
alias l='ls -CF'

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# My aliases
alias ll='ls -alF'
alias tree='tree -C'
alias cat='bat'
alias lll='exa -l -ga --octal-permissions'
alias feh='feh -Fd --draw-tinted'
alias vtop="vtop --theme brew"

alias bg="feh --bg-fill --randomize --recursive ~/wallpapers"
alias idea="idea.sh &>/dev/null & disown"
alias pulse="pulseUI &>/dev/null & disown"
alias pdf="zathura --fork"
alias dup="kitty . & disown"
alias ..="cd .."
alias ...="cd ../.."

#Git aliases
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gpl="git pull"
alias gm="git merge"
alias gst="git status"
alias gck="git checkout"
alias gd="git diff"
alias fgc="git add .;git commit -m \"fast committed\";git push"
#Cargo aliases
alias cr="cargo run"
alias cb="cargo build"
alias cc="cargo check"
alias ct="cargo test"

#Calc function
calc(){ awk "BEGIN { print "$*" }"; }

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

xset r rate 200 40

eval $(thefuck --alias)



