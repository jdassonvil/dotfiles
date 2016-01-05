# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi

alias vi="vim"
alias mongo="docker exec -ti mongo mongo"
alias redis-cli="docker exec -ti redis redis-cli
"alias start_mongo="docker run -d -p 27017:27017 mongo:2.6 --smallfiles
"alias start_redis="docker run -d -p 6379:6379 redis"
