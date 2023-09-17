if status is-interactive
    # Commands to run in interactive sessions can go here

#Fish Settings
set fish_greeting 

#Environment Variables
set -g -x PATH "$PATH:/lib"
set -g -x PATH "$PATH:$HOME/result/bin"
set -g -x PATH "$PATH:$HOME/go/bin"

#Zoxide
zoxide init fish | source

#Starship
starship init fish | source

#Ocaml
source /home/princem/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

 #Alias    
    alias cat "bat"
    alias ls  "lsd --icon always"
    alias top "htop"
    alias vi  "nvim"
		alias git-local-clean "git branch --merged | egrep -v \"(^\\*|master|main|dev)\" | xargs git branch -d"
		alias git-remote-clean "git remote prune origin" 


end


