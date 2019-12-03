# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/drslowpokephd/.oh-my-zsh"

ZSH_THEME="nanotech"
CASE_SENSITIVE="true"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git cargo gem ruby rust)
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

alias lbstart="~/.config/lemonbar.sh | lemonbar"

export PATH=$PATH:/home/drslowpokephd/.gem/ruby/2.6.0/bin

export PATH="/home/drslowpokephd/bin:/usr/sbin:/sbin:/home/drslowpokephd/.cargo/bin:/home/drslowpokephd/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/var/lib/flatpak/exports/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/drslowpokephd/.gem/ruby/2.6.0/bin:/home/drslowpokephd/.gem/ruby/2.6.0/bin:/home/drslowpokephd/.vimpkg/bin"

export PATH="/home/drslowpokephd/bin:/usr/sbin:/sbin:/home/drslowpokephd/.cargo/bin:/home/drslowpokephd/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/var/lib/flatpak/exports/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/drslowpokephd/.gem/ruby/2.6.0/bin:/home/drslowpokephd/.gem/ruby/2.6.0/bin:/home/drslowpokephd/.vimpkg/bin:/home/drslowpokephd/.vimpkg/bin"

export PATH="$PATH":"$HOME/.pub-cache/bin"
