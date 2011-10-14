# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
#export ZSH_THEME="afowler"
#export ZSH_THEME="candy"
#export ZSH_THEME="tonotdo"
export ZSH_THEME="takashiyoshida"

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' format '==== '\''%d'\'' ===='
zstyle ':completion:*' list-colors ''
zstyle :compinstall filename '/home/artaserse/.zshrc'

autoload -Uz compinit
compinit
autoload -U promptinit
promptinit

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
autoload -U colors && colors



# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ssh-agent)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
source $HOME/.artavariables
source $HOME/.artaliases



# ricerca comandi 
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
bindkey "\e[3~" delete-char # Del

# Stuff for later use
export EDITOR=vim
export BROWSER=chromium
export XTERM=xterm


### transparency on xterm
### [ -n "$WINDOWID" ] && transset-df .80 -i $WINDOWID >/dev/null
