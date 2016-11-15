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
alias pup="php -S localhost:8000"

alias dockit="bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'"