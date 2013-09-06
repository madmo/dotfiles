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

# auto correction
setopt correct

# emacs key bindings
bindkey -e

case "$TERM" in
        linux|screen)
                bindkey "^[[1~" beginning-of-line       # Pos1
                bindkey "^[[4~" end-of-line             # End
        ;;
        *xterm*|(dt|k)term)
                bindkey "^[[H"  beginning-of-line       # Pos1
                bindkey "^[[F"  end-of-line             # End
                bindkey "^[[7~" beginning-of-line       # Pos1
                bindkey "^[[8~" end-of-line             # End
        ;;
        rxvt|Eterm)
                bindkey "^[[7~" beginning-of-line       # Pos1
                bindkey "^[[8~" end-of-line             # End
        ;;
esac

# suse prompt style
prompt suse
