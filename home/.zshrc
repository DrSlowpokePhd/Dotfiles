# export ZSH="/home/drslowpokephd/.oh-my-zsh"

# ZSH_THEME="bira"
CASE_SENSITIVE="true"
HIST_STAMPS="mm/dd/yyyy"
# plugins=(git cargo gem ruby rust)
# source $ZSH/oh-my-zsh.sh
source ~/.zsh-themes/themes/bira.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh-plugins/lib/git.zsh
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

## Alias section 
                                      # Confirm before overwriting something
alias cp='nocorrect cp -i'
alias ebuild='nocorrect ebuild'
alias gist='nocorrect gist'
alias heroku='nocorrect heroku'
alias hpodder='nocorrect hpodder'
alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias mysql='nocorrect mysql'
alias sudo='nocorrect sudo'
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB
alias gitu='git add . && git commit && git push'
alias ls='ls --color=tty'
alias la='ls -la'
alias emulator='/home/drslowpokephd/android/emulator/emulator'
# Theming section  
autoload -U compinit colors zcalc
compinit -d
colors

alias lbstart="~/.config/lemonbar.sh | lemonbar"
alias bpc="$EDITOR ~/.config/bspwm/bspwmrc"
alias skc="$EDITOR ~/.config/sxhkd/sxhkdrc"
alias zhc="$EDITOR ~/.zshrc"
alias dmenu="rofi -dmenu"
alias scrot="scrot && notify-send 'screenshot taken' "
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias md='mkdir -p'
alias rd=rmdir

function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -10
  fi
}
compdef _dirs d

# List directory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'
alias _='sudo '

bindkey ' ' magic-space                               # [Space] - do history expansion
bindkey '^[[1;5C' forward-word                        # [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5D' backward-word                       # [Ctrl-LeftArrow] - move backward one word


export PATH="/home/drslowpokephd/bin:/usr/sbin:/sbin:/home/drslowpokephd/.cargo/bin:/home/drslowpokephd/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/var/lib/flatpak/exports/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/drslowpokephd/.gem/ruby/2.6.0/bin:/home/drslowpokephd/.gem/ruby/2.6.0/bin:/home/drslowpokephd/.vimpkg/bin:/usr/sbin/powerline:/home/drslowpokephd/.local/bin:/home/drslowpokephd/flutter/flutter/bin:/opt/android-sdk/tools/bin:/opt/android-sdk/tools:/home/drslowpokephd/android/tools:/home/drslowpokephd/android/emulator:/home/drslowpokephd/android/platform-tools:/home/drslowpokephd/android/build-tools/29.0.3:/home/drslowpokephd/android/tools/bin"
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
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' menu select
HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=500
#export EDITOR=/usr/bin/nvim
#export VISUAL=/usr/bin/nvim
WORDCHARS=${WORDCHARS//\/[&.;]}                                 # Don't consider certain characters part of the word

# enable substitution for prompt
setopt prompt_subst

# powerline-daemon -q 
# . /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
