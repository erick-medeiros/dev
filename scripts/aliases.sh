#!/bin/sh

alias ..="cd .."
alias ....="cd ../.."

alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias rm="rm -i"
alias mv="mv -i"

alias ctar="tar -czvf"
alias untar="tar -zxvf"

alias trans-br="trans -b pt-br:en"
alias trans-en="trans -b en:pt-br"

mkcdir() {
	mkdir -p -- "$1" && cd -P -- "$1"
}
