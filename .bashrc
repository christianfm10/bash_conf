#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Includes
[[ -f ~/.bashdir/.bashcolor ]] && . ~/.bashdir/.bashcolor
[[ -f ~/.bashdir/.bashaliases ]] && . ~/.bashdir/.bashaliases
[[ -f ~/.bashdir/.bashpath ]] && . ~/.bashdir/.bashpath
[[ -f ~/.bashdir/ble-nightly/ble.sh ]] && . ~/.bashdir/ble-nightly/ble.sh
# [[ -f ~/.bashdir/oh-git/prompt.sh ]] && . ~/.bashdir/oh-git/prompt.sh

if [ -f "$HOME/.bashdir/git-prompt/gitprompt.sh" ]; then
	GIT_PROMPT_ONLY_IN_REPO=1
	source "$HOME/.bashdir/git-prompt/gitprompt.sh"
fi

if [[ $- == *i* ]]; then # in interactive session
	bind 'set editing-mode vi'
fi
