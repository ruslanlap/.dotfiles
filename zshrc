# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

export VIRTUAL_ENV_DISABLE_PROMPT=1  # Prevents default venv behavior

function virtualenv_prompt {
    if [[ -n "$VIRTUAL_ENV" ]]; then
        echo "($(basename $VIRTUAL_ENV)) "
    fi
}

PROMPT='$(virtualenv_prompt)'$PROMPT

POWERLEVEL9K_MODE='nerdfont-complete'





if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -U compinit && compinit

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="random"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fzf dirhistory command-not-found copyfile github zsh-autosuggestions web-search zsh-history-substring-search zsh-syntax-highlighting history copyfile z ohmyzsh-full-autoupdate virtualenv) 
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
 

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
## Plugins section: Enable fish style features
# Use syntax highlighting

# Use history substring search
zstyle ':completion:*' menu select
#source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias upgrade="sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get clean"
autoload -Uz up-line-or-beginning-search
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
autoload -Uz up-line-or-beginning-search

zle -N up-line-or-beginning-search

bindkey '^[[A' up-line-or-beginning-search

autoload -Uz down-line-or-beginning-search

zle -N down-line-or-beginning-search

bindkey '^[[B' down-line-or-beginning-search


#source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias pf="find . -exec ls --color=auto {} + | fzf --preview='less {}' --bind shift-up:preview-page-up,shift-down:preview-page-down"
if [[ -f ~/.dircolors ]] ; then
    eval $(dircolors -b ~/.dircolors)     
elif [[ -f /etc/DIR_COLORS ]] ; then
    eval $(dircolors -b /etc/DIR_COLORS)
fi
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls='lsd'




# To customize prompt, run `p10k configure` or edit ~/.dotfiles/p10k.zsh.
[[ ! -f ~/.dotfiles/p10k.zsh ]] || source ~/.dotfiles/p10k.zsh
alias upd='sudo apt update && sudo apt upgrade -y'
#mkcd
#function mkcd () {
 # mkdir "$1" && cd "$1" && pwd
#}
alias acp='git add . && git commit -m "new add" && git push'
export VIRTUAL_ENV_DISABLE_PROMPT=
#mkcd2
function mkcd() {
  # Check if a directory name was provided
  if [[ -z "$1" ]]; then
    echo "Usage: mkcd <directory_name>"
    return 1
  fi

  # Attempt to create the directory (with -p to avoid errors if it already exists)
  if mkdir -p "$1"; then
    cd "$1" && echo "Changed to directory: $(pwd)"
  else
    echo "Failed to create directory: $1"
    return 1
  fi
}


# Created by `pipx` on 2025-02-05 19:30:28
export PATH="$PATH:/home/ubuntu/.local/bin"


alias py='python3'


