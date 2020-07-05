# Use bat for cat and less
if [ -x "$(command -v bat)" ]; then
	alias cat='bat --paging=never -p'
	alias less='bat'
fi

# Use lsd for ls
if [ -x "$(command -v lsd)" ]; then
	alias ls='lsd'
	alias lt='ls --tree'
fi

alias ll='ls -lAF'
alias la='ls -A'
alias l='ls -lF'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    #alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
