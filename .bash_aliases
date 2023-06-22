# try to enable color support
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  # add some handy aliases
  alias ls='ls --color=auto'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
  alias rgrep='rgrep --color=auto'
  alias rg='rg --color=auto'
  # colored GCC warnings and errors
  export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
fi

# more ls aliases:
alias ls="ls --ignore='lost+found' -q"
alias lss='ls -S --si'
alias lsa='ls -A --hyperlink=auto --color=auto'
alias ls1='lsa -1'
alias lsq='ls1 -Q'
alias lsj='ls -A1qQmt'

# Add an "alert" alias for long running commands.  Use like so:
#sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# assume other aliases
[[ ! -f ~/.aliases ]] || . ~/.aliases
