# module loading
autoload -Uz compinit promptinit
compinit
promptinit

# history settings
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_IGNORE_DUPS # no dupes in history

# automatic cd
setopt autocd

# emacs key bindings
bindkey -e

# suse prompt style
prompt suse
