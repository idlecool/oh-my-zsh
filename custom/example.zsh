# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#

alias e="emacs -q"
alias em="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n"
ems () {
    if [ $(ps aux | grep Emacs | wc -l) -lt 2 ]
    then
        echo "Starting Emacs Server"
        /Applications/Emacs.app/Contents/MacOS/Emacs --daemon
    else
        echo "Emacs Server Already Running"
    fi
}

devsetup () {
    echo "Setting Up Dev Environment"
    sudo ipfw add 5 fwd 127.0.0.1,8080 tcp from any to me 80
    sshfs -p 22222 idlecool@localhost:/var/www ~/Workspace/ubuntu/www -oauto_cache,reconnect,volname=www
}
