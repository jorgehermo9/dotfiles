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
export EDITOR=nano
export EXPLORER=ranger
# Sxhkd
export SXHKD_SHELL=/bin/bash

#XDG_CONFIG_HOME
export XDG_CONFIG_HOME=$HOME/.config 

# Default PATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:$HOME/.local/bin

#PATH ISD

#AdoptOpenJDK11
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
PATH=$JAVA_HOME/bin:$PATH

#PulseSecure
PULSE_HOME=/opt/pulsesecure
PATH=$PULSE_HOME/bin:$PATH

#Tools
PAPERVIEW_HOME=/home/jorge/tools/paperview
PATH=$PAPERVIEW_HOME:$PATH

# Rust
PATH=$PATH:$HOME/.cargo/bin

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
zstyle :compinstall filename '~/.zshrc'

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
alias open="xdg-open &>/dev/null"

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
alias fgc="git add .;git commit -m 'fast committed';git push"

#Cargo aliases
alias cr="cargo run"
alias cb="cargo build"
alias cc="cargo check"
alias ct="cargo test"

alias svgtopdf="inkscape --export-type=pdf"

#Calc function
calc(){ awk "BEGIN { print "$*" }"; }

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

#xset r rate 200 40

eval $(thefuck --alias)

#Reports current power draw
power(){
	echo - | awk "{printf \"%.2f\", \
	$(( \
	  $(cat /sys/class/power_supply/BAT1/current_now) * \
	  $(cat /sys/class/power_supply/BAT1/voltage_now) \
	)) / 1000000000000 }" ; echo " W "
}


fpath=(/home/jorge/.gtheme/completions $fpath)
autoload -Uz compinit && compinit
