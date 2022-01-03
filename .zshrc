ALIASFILE=~/.aliases
source $ALIASFILE

# Append vim-live-latex-preview
export PATH="/home/zack/.vim/plugs/vim-live-latex-preview/bin:$PATH"

# Append ruby + gems
export PATH="/home/zack/.gem/ruby/2.6.0/bin:$PATH"

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
zinit light "MichaelAquilina/zsh-auto-notify"

# zsh syntax highlighting
zinit light "zdharma/fast-syntax-highlighting" 

# auto suggestions
zinit light "zsh-users/zsh-autosuggestions"     
    bindkey '^[[Z' autosuggest-accept # Accept suggestion
    bindkey '^ ' autosuggest-execute  # Accept and execute suggestion
    bindkey -M emacs "${terminfo[kcbt]}" reverse-menu-complete
    bindkey -M viins "${terminfo[kcbt]}" reverse-menu-complete
    bindkey -M vicmd "${terminfo[kcbt]}" reverse-menu-complete
    zstyle ':completion:*' special-dirs true
    zstyle ':completion:*' list-colors ''
    zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
    autoload -U compinit && compinit
    zmodload -i zsh/complist
    zstyle ':completion:*' menu select

# fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse' 
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
    bindkey '^T' fzf-file-widget        # general fzf for files
    bindkey '^F' fzf-cd-widget          # fzf for cd
    bindkey '^R' fzf-history-widget     # fzf for history
