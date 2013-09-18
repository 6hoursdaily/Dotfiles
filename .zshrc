# This bears repeating here.
# If you need to set environment specific but sensitive data,
# set them in your .zprofile or .bash_profile.
# Do not include them here

setopt nullglob
# unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

# ZSH Themes
# export ZSH_THEME="sorin"
export ZSH_THEME="eastwood"
# export ZSH_THEME="bira"
# export ZSH_THEME="daveverwer"

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

plugins=(zsh-syntax-highlighting git git-flow osx vi-mode rails rails3 rvm)

source $ZSH/oh-my-zsh.sh

# Path specification
export PATH=/usr/local/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/prism/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/6hoursdaily/.rvm/bin:/Users/6hoursdaily/android-sdk/tools:/Users/6hoursdaily/android-sdk/platform-tools:$PATH
### Added by the Heroku Toolbelt
export PATH="$PATH:/usr/local/heroku/bin"

export TERM=xterm-256color
export EDITOR='vim -f'
export NODE_PATH="/usr/local/lib/node"

# load tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# uncomment if using rbenv
# if [ -d $HOME/.rbenv ]; then
#   export PATH="$HOME/.rbenv/bin:$PATH"
#   eval "$(rbenv init -)"
# fi

RUBYOPT="-r'noexec'"

unsetopt auto_name_dirs

# load project rvmrc
rvm default
__rvm_project_rvmrc

# Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.rvm/bin

# reload directory to load project gemset when opening new shell 
cd ..;cd -
