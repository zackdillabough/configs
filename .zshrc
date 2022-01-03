xmodmap ~/.Xmodmap

export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim

ALIASFILE=~/.aliases
source $ALIASFILE

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

### themes
# pure
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure

# common
#zinit light "jackharrisonsherlock/common"       # theme
#    setopt prompt_subst

### options

bindkey -v  # enable vi-mode

### plugins
# [ESC][ESC] prepends sudo to prev/current command
zinit light "hcgraf/zsh-sudo"

# keeps last executed command on top
zinit light "Valiev/almostontop"

# recommends aliases if applicable
zinit light "djui/alias-tips"

# for traversing upwards through directories
zinit light "peterhurford/up.zsh"

# notis for long processes
#zinit light "MichaelAquilina/zsh-auto-notify"

# fzf completion selection menu
#       ctrl-space to select multiple options
zinit light "Aloxaf/fzf-tab"
    # disable sort when completing `git checkout`
    zstyle ':completion:*:git-checkout:*' sort false
    # set descriptions format to enable group support
    zstyle ':completion:*:descriptions' format '[%d]'
    # set list-colors to enable filename colorizing
    zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
    # preview directory's content with exa when completing cd
    zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
    # switch group using `,` and `.`
    zstyle ':fzf-tab:*' switch-group ',' '.'

# zsh syntax highlighting
zinit light "zdharma/fast-syntax-highlighting" 

# auto suggestions
zinit light "zsh-users/zsh-autosuggestions"     
    bindkey '^ ' autosuggest-accept # Accept suggestion
    bindkey '^j' autosuggest-execute  # Accept and execute suggestion
    #bindkey 'M' autosuggest-execute  # Accept and execute suggestion (for use when you figure out how to map ctrl+enter to esc+M)
    bindkey -M emacs "${terminfo[kcbt]}" reverse-menu-complete
    bindkey -M viins "${terminfo[kcbt]}" reverse-menu-complete
    bindkey -M vicmd "${terminfo[kcbt]}" reverse-menu-complete
    zstyle ':completion:*' special-dirs true
    zstyle ':completion:*' list-colors ''
    zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
    autoload -U compinit && compinit
    zmodload -i zsh/complist
    #zstyle ':completion:*' menu select

# fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse' 
export FZF_DEFAULT_COMMAND='fdfind --hidden'
export FZF_CTRL_T_COMMAND='fdfind --hidden'
export FZF_ALT_C_COMMAND='fdfind --type d --hidden --follow --exclude ".git"' 
#export FZF_ALT_C_COMMAND='fdfind --type d --hidden --follow --exclude ".git" . "$1"'
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
    bindkey '^T' fzf-file-widget        # general fzf for files
    bindkey '^F' fzf-cd-widget          # fzf for cd
    bindkey '^R' fzf-history-widget     # fzf for history

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export BROWSER='/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe'

export PATH="/home/napkin/.yarn/bin:$PATH"
export PATH="/home/napkin/.local/kitty.app/bin/:$PATH"
export PATH="/home/napkin/.local/bin:$PATH"
