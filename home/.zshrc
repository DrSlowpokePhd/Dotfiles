CASE_SENSITIVE="true"
HIST_STAMPS="mm/dd/yyyy"

# source ~/.zsh-themes/themes/aussiegeek.zsh-theme
source ~/.zsh-plugins/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh-plugins/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh-plugins/lib/git.zsh
source ~/.zsh-plugins/plugins/zsh-you-should-use/you-should-use.plugin.zsh

autoload -U compinit colors zcalc
compinit -d
colors

export ELECTRON_OZONE_PLATFORM_HINT=auto
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
  export VISUAL='vim'
else
  export EDITOR='nvim'
  export VISUAL='nvim'
fi
export UNITY_NOPROXY=localhost,127.0.0.1
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#404040"
# prompt section
local git_branch='$(git_prompt_info)'
if [[ $UID -eq 0 ]]; then
    local user_symbol='#'
else
    local user_symbol='%F{green}λ%f'
fi

local current_dir='%{$terminfo[bold]$fg[blue]%}%~ %{$reset_color%}'
PROMPT="${current_dir}${git_branch} ${user_symbol} "
RPROMPT="%(?..%?)"


# Alias section                                       
alias cp='nocorrect cp -i'              # Confirm before overwriting something
alias tmuxp='tmuxinator start -p tmuxinator.yml'
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
alias gitu='git commit && git push'
alias ls='ls --color=tty'
alias la='ls -la'
alias emulator='/home/drslowpokephd/android/emulator/emulator'
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
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'
alias _='sudo '
alias test-awesome='Xephyr :5 & sleep 1 ; DISPLAY=:5 awesome'
# alias nvim='nvim -c COQnow' # Starts coq.nvim on editor startup

# Theming section  


function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -10
  fi
}
compdef _dirs d


bindkey ' ' magic-space                               # [Space] - do history expansion
bindkey '^[[1;5C' forward-word                        # [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5D' backward-word                       # [Ctrl-LeftArrow] - move backward one word


export PATH="/home/jamied/bin:/usr/sbin:/sbin:/home/jamied/.cargo/bin:/home/jamied/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/var/lib/flatpak/exports/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/jamied/.gem/ruby/2.6.0/bin:/home/jamied/.gem/ruby/2.6.0/bin:/home/jamied/.vimpkg/bin:/usr/sbin/powerline:/home/jamied/.local/bin:/home/jamied/flutter/flutter/bin:/opt/android-sdk/tools/bin:/opt/android-sdk/tools:/home/jamied/android/tools:/home/jamied/android/emulator:/home/jamied/android/platform-tools:/home/jamied/android/build-tools/29.0.3:/home/jamied/android/tools/bin:/home/jamied/.gem/ruby/2.7.0/bin:/home/jamied/.gem/ruby/3.0.0/bin:/home/jamied/dragonruby-gtk/dragonruby-linux-amd64/bin:/home/jamied/Dotfiles/scripts:/usr/bin/cmark:/home/jamied/.local/share/JetBrains/Toolbox/scripts"
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
zstyle ':completion:*' rehash true                   # automatically find new executables in path 
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' menu select
HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=500
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
WORDCHARS=${WORDCHARS//\/[&.;]}                       # Don't consider certain characters part of the word

# enable substitution for prompt
setopt prompt_subst

# Created by `pipx` on 2021-08-02 23:50:08
export PATH="$PATH:/home/jamesd/.local/bin"
