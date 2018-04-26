export PATH="./vendor/bin:~/.composer/vendor/bin:./bin:/usr/local/bin:/usr/local/sbin:$HOME/npm/bin:$PATH"

export PS1="\n\u@\w\n: "
export PS2="⇉ "

export HISTSIZE=
export HISTFILESIZE=
export HISTTIMEFORMAT='%b %d %I:%M %p '
export HISTCONTROL=ignoreboth
export HISTIGNORE="history:pwd:ls:ls -la:ll:fg"

export GREP_COLOR="37"
export GREP_OPTIONS="--color=auto"

export EDITOR=vim

function colorize {
    
    local DEFAULT="\033[0;00m"
    
    COLOR=$DEFAULT
    
    case $1 in
    "success" )
        COLOR="\033[0;35m"
        ;;
    "info" )
        COLOR="\033[0;37m"
        ;;
    "warning" )
        COLOR="\033[0;33m"
        ;;
    "danger" )
        COLOR="\033[0;31m"
        ;;
    esac
    
    echo -e $COLOR$2$DEFAULT
}

function etrash
{
  if [ -d ~/.Trash/ ]; then # Check if directory exists
      rm -rfdP ~/.Trash/
      colorize success "Trash Emptied" 
  else
      colorize info 'No Trash to Empty'
  fi
}

function newp {
    
    PROJECT_DIR=$HOME'/GoogleDrive/projectbase/'
    
    if [[ ! -d ~/GoogleDrive/projectbase/ ]]; then
        colorize danger "Directory Unavailable:" 
        colorize info $PROJECT_DIR 
        return -1
    fi
    
    
    [[ -z "$1" ]] && PROJECT_NAME=new_project || PROJECT_NAME=$1
    
    if [ -d "$PROJECT_NAME" ]; then
        colorize danger "'$PROJECT_NAME' directory exists"
        return -1
    fi
    
    
    mkdir $PROJECT_NAME
    cd $PROJECT_NAME
    
    cp -R $PROJECT_DIR .
    
    if [[ -a start ]]; then
        ./start $PROJECT_NAME
        rm -rfd start
    fi
    
    git init -q
    git add --all
    git commit -q -m 'Project Created'
    
    composer install
    
    colorize success "Project Created: $PROJECT_NAME"  
    
}

function self-update()
{
    colorize info "Composer" 
    composer self-update
    composer global update

    colorize info "Brew" 
    brew update
}
