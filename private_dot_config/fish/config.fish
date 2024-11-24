if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -U fish_greeting

# Utilities 
alias c="clear"
alias ll="lsd -1 -hal --blocks permission,user,size,name --group-dirs=first"
alias btop="btop --utf-force"

# Package Manager
alias search="yay -Ss "
alias install="yay -S "
alias update="yay -Syu "
alias remove="yay -R "
alias ai-docker-stop="cd $HOME/Documents/AiInterview/aiinterview-backend && docker-compose stop"

# Fish Commands
alias hish="history search --contains "

fish_vi_key_bindings
bind -M insert -m default ii backward-char force-repaint
bind -M insert \ef accept-autosuggestion

starship init fish | source
zoxide init fish | source
