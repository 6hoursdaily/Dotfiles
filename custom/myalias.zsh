# Editors
alias e='mvim'
alias v='vim'

# Git Flow
alias gfinit='git flow init'
alias gfstart='git flow feature start'
alias gfpublish='git flow feature publish'
alias gffinish='git flow feature finish'
alias gflist='git flow feature list'
alias gfco='git flow feature checkout'

# Git Aliases
alias gai='git add -i'
alias gcl='git clone'
alias gcm='git commit -m'
alias catgit='cat .git/config'
alias tigs='tig status'

# routines
alias getloc='pwd | pbcopy'
alias reloadshell='source ~/.zshrc'

# Vim Power Edits with Ctags
alias cindex='ctags -R --exclude=.git --exclude=log * '

# bundle
alias be='bundle exec'
alias rsbe='rvmsudo bundle exec'
alias brt='bundle exec rake -T'

# tmux
alias m='tmuxinator'
alias ms='m start'
alias ml='m list'

# rspec
alias berspec='bundle exec rspec'

# better ps
alias psb='ps auxwww | grep'

# vim update
alias evim='vim ~/.vimrc.local'

# system
alias lock='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'
alias aa='ack -a'
alias cl="clear"
alias l="ls -lhta"
