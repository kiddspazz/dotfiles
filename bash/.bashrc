export LC_CTYPE=en_US.UTF-8   #sets caps type to US English
export EDITOR='vim'   #sets editor to vim

export PATH="$HOME/.bin:$HOME/.cargo/bin:$PATH"   #adds rust support and personal shell scripts to path

set -o vi #sets bash commands to vim commands

alias l='ls -alFG' #allows l for long list
alias ll='ls -alFG' #allows ll for long list
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"  #allows cleanupds to get rid of all the .DS_Store
alias mydate="date '+%y%m%d.%Hh%m %z %a'"   #print date in format i like

#make and move to dir
function mkcd() {
  mkdir "$1"
  cd "$1"
}

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh" #source for bash completion

GIT_PS1_SHOWDIRTYSTATE=true #defines git status
GIT_PS1_SHOWSTASHSTATE=true #defines git status
GIT_PS1_SHOWUNTRACKEDFILES=true #defines git status
PS1='\D{%y%m%d.%Hh%M} \w$(__git_ps1 " [%s]")\$ ' #prints git status in prompt

if [ -f ~/.bycrc ]; then
   source ~/.bycrc
fi
