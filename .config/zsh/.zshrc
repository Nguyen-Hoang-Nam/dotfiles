#######################################
#
# ZSH Contributions
#
########################################

function zle-line-init zle-keymap-select {
    PROMPT=`$XDG_DATA_HOME/zsh/plugin/purs/target/release/purs prompt -k "$KEYMAP" -r "$?" --venv "${${VIRTUAL_ENV:t}%-*}"`
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

autoload -Uz add-zsh-hook

function _prompt_purs_precmd() {
    $XDG_DATA_HOME/zsh/plugin/purs/target/release/purs precmd
}
add-zsh-hook precmd _prompt_purs_precmd

autoload -Uz compinit; compinit

autoload -Uz run-help

bindkey -v

########################################
#
# Options
#
########################################

# Changing Directories
setopt AUTO_CD
setopt CDABLE_VARS

# Expandsion and Globbing
setopt EXTENDED_GLOB
setopt GLOB_DOTS

# History
setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

########################################
#
# Completion System
#
########################################

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

########################################
#
# Plugin
#
########################################

source $XDG_DATA_HOME/nvm/nvm.sh
source $XDG_DATA_HOME/zsh/plugin/zsh-autosuggestions/zsh-autosuggestions.zsh
source $XDG_DATA_HOME/zsh/plugin/zsh-command-not-found/command-not-found.plugin.zsh
source $XDG_DATA_HOME/zsh/plugin/zsh-colored-man-pages/colored-man-pages.plugin.zsh
source $XDG_DATA_HOME/zsh/plugin/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $XDG_DATA_HOME/zsh/plugin/zsh-history-substring-search/zsh-history-substring-search.zsh
source $XDG_DATA_HOME/zsh/plugin/zsh-autopair/autopair.zsh

export PATH="$XDG_DATA_HOME/java/spring-2.5.3/bin:$HOME/.local/bin:$XDG_DATA_HOME/cargo/bin:$XDG_DATA_HOME/go/bin:$PATH"

bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-up

eval "$(zoxide init zsh)"

########################################
#
# Alias
#
########################################

alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias l="exa --group-directories-first --all --icons --git --long"
alias ls="exa --group-directories-first --all --icons --git --long"
alias tree="exa --tree --git-ignore --group-directories-first --all --icons --git"
alias python="python3.9"
alias b="bat --theme=ansi --tabs=2"
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
alias rm="rm -i"
alias c="clear"
alias m="run-help"
alias weather="curl wttr.in"
alias back="cd -"

# Noglob
alias npm="noglob npm"
alias http="noglob http"

# Git
alias ga="git add ."
alias gc="git commit"
alias gl="git log --graph --decorate --pretty=oneline --abbrev-commit"
alias gitupdate="git remote update && print '\n' && git status -uno"

# Kitty
alias ssh="kitty +kitten ssh"
alias icat="kitty +kitten icat"

# Framework
alias dynamodb="aws dynamodb --endpoint-url http://localhost:8000"
alias sail="bash vendor/bin/sail"
alias spring-boot-run="./mvnw spring-boot:run"
alias luamake="/home/nguyenhoangnam/.local/share/dev/lua-language-server/3rd/luamake/luamake"

# Suffix aliases
alias -s git="git clone"
alias -s json="neovim"
alias -s md="neovim"
alias -s properties="neovim"
alias -s yml="neovim"
alias -s yaml="neovim"
alias -s mod="neovim"
alias -s toml="neovim"
alias -s xml="neovim"
alias -s js="neovim"
alias -s ts="neovim"
alias -s java="neovim"
alias -s lua="neovim"
alias -s py="neovim"
alias -s rs="neovim"
alias -s go="neovim"
