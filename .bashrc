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

function self-update()
{
    colorize info "Composer" 
    composer self-update
    composer global update

    colorize info "Brew" 
    brew update
}
