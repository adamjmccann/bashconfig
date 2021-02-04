#-----------------------------------
# Source global definitions (if any)
#-----------------------------------

if [ -f ~/.bashrc ]; then
    . ~/.bashrc   # --> Read bashrc, if present.
fi


#-----------------------------------
# Proxy
#-----------------------------------

## Proxy for public networks
http_proxy=

https_proxy=$http_proxy
no_proxy=localhost,127.0.0.1,.ge.com

export http_proxy
export https_proxy
export no_proxy


#-----------------------------------
# Misc Environment Variables
#-----------------------------------

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export PATH


# golang path
GOPATH=~/codebase/workspaces/go
PATH="$GOPATH/bin:$PATH"
export GOPATH
