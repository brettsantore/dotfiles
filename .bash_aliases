# Path Shortcuts
alias up='cd ..'
alias home='cd ~'
alias desk='cd ~/Desktop'

# Files Shortcuts
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias which="which -a"                      # Preferred 'which' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias lld='ls -laG | grep "^d"'              # Directories Only
alias llf='ls -lG | grep -v "^d"'           # Files Only

alias myip="curl https://wtfismyip.com/text"

alias art='php artisan'
alias con='php bin/console'
alias pup="start_local_php_server"

alias dockit="bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'"

function start_local_php_server() {
    if [[ -n $1 ]]; then
        echo $1
        PORT=$1
    else
        PORT=8080
    fi
    
    php -S localhost:$PORT
}