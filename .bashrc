#############
### ALIAS ###
#############

# ll
alias ll="ls -lhA"
# color directories
alias ls="ls -G"
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vim="/usr/local/bin/nvim"
alias vi="/usr/local/bin/nvim"

###########
### ENV ###
###########

export EDITOR="/usr/local/bin/nvim"

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# NVM
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# GO
export GOPATH="$HOME/dev/go"

export PATH="$GOPATH/bin:$PATH"

##############
### TOKENS ###
##############

. $HOME/.tokens

###########
### ETC ###
###########

# git branch bash
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[$(tput bold)\]\[$(tput setaf 5)\]\[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# NVM
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# GO
export GOPATH="$HOME/dev/go"

# rbenv
eval "$(rbenv init -)"
