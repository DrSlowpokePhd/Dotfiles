export ZSH="/home/drslowpokephd/.oh-my-zsh"

ZSH_THEME="bira"
CASE_SENSITIVE="true"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git cargo gem ruby rust)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias lbstart="~/.config/lemonbar.sh | lemonbar"
alias bpc="$EDITOR ~/.config/bspwm/bspwmrc"
alias skc="$EDITOR ~/.config/sxhkd/sxhkdrc"
alias zhc="$EDITOR ~/.zshrc"
alias dmenu="rofi -dmenu"

export PATH="/home/drslowpokephd/bin:/usr/sbin:/sbin:/home/drslowpokephd/.cargo/bin:/home/drslowpokephd/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/var/lib/flatpak/exports/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/drslowpokephd/.gem/ruby/2.6.0/bin:/home/drslowpokephd/.gem/ruby/2.6.0/bin:/home/drslowpokephd/.vimpkg/bin:/usr/sbin/powerline:/home/drslowpokephd/.local/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

## Options section
setopt correct                # Auto correct mistakes
setopt extendedglob           # Extended globbing. Allows using regular expressions with *
setopt nocaseglob             # Case insensitive globbing
setopt rcexpandparam          # Array expension with parameters
setopt nocheckjobs            # Don't warn about running processes when exiting
setopt numericglobsort        # Sort filenames numerically when it makes sense
setopt nobeep                 # No beep
setopt appendhistory          # Immediately append history instead of overwriting
setopt histignorealldups      # If a new command is a duplicate, remove the older one
setopt autocd                 # if only directory path is entered, cd there.
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=500
#export EDITOR=/usr/bin/nvim
#export VISUAL=/usr/bin/nvim
WORDCHARS=${WORDCHARS//\/[&.;]}                                 # Don't consider certain characters part of the word


## Alias section 
alias cp="cp -i"                                                # Confirm before overwriting something
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB
alias gitu='git add . && git commit && git push'

# Theming section  
autoload -U compinit colors zcalc
compinit -d
colors

# enable substitution for prompt
setopt prompt_subst

# powerline-daemon -q 
# . /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
