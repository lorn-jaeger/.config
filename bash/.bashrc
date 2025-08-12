#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

export PS1="\[\e[1m\]\[\e[31m\][\[\e[33m\]\u\[\e[32m\]@\[\e[34m\]\h \[\e[35m\]\W\[\e[31m\]]\[\e[0m\]\$ \[\e[22m\]"

# PS1="$(starship prompt --status=$STATUS --jobs=$NUM_JOBS)"

bind "set completion-ignore-case on"

#alias nvim="$HOME/.local/bin/nvim-linux-x86_64/bin/nvim"


export EDITOR=nvim

export BROWESER=firefox-developer-edition

shopt -s histappend

shopt -s cmdhist

alias v=nvim

HISTSIZE=500000
HISTFILESIZE=100000
# disable for now
set -o vi
export TERM=xterm-256color

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/home/Code/Fire/EE_Wildfire/google-cloud-sdk/path.bash.inc' ]; then . '/home/home/Code/Fire/EE_Wildfire/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/home/Code/Fire/EE_Wildfire/google-cloud-sdk/completion.bash.inc' ]; then . '/home/home/Code/Fire/EE_Wildfire/google-cloud-sdk/completion.bash.inc'; fi

. "$HOME/.atuin/bin/env"

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash --disable-up-arrow)"

export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"


export GEM_HOME="$HOME/.local/share/gem/ruby/3.4.0"
export BUNDLE_PATH="$HOME/.local/share/gem/ruby/3.4.0"
export PATH="$GEM_HOME/bin:$PATH"


eval "$(direnv hook bash)"
