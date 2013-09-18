# Dotfiles
by [6hoursdaily](http:6hoursdaily.com)

----
Maintainer: [Jerry Pascua](mailto:jerrypascua@gmail.com)

Description:
  This Dotfiles was created to simplify setting up dotfiles for Ruby on Rails setups, or in my case, after cloning my setup from an old disk image.

Requirements:
  - Homebrew
  - Zsh
  - Oh-my-zsh
  - Git-Flow
  - RVM
  - Ruby
  - Tmux
  - Tmuxinator gem
  - Vim or MacVim
  - PostgreSQL

Homebrew formulas (optional):
  - mongodb
  - mysql
  - sqlite
  - htop
  - jnettop
  - bwm-ng

### Repository Notes:

  Getting a copy of the Repository:

    git clone git@github.com:6hoursdaily/Dotfiles.git $HOME/.dotfiles

  Installation:

    $ ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
    $ ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc
    $ ln -s $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf
    $ ln -s $HOME/.dotfiles/.gemrc $HOME/.gemrc

  Troubleshooting:
    
    If you get a 'File exists' error when symlinking files, simply rename the existing file.

  To Dos:
    
    - Shell script automator for installing files and backing up pre-existing dotfiles
    - Add custom aliases

----
  Important Notes:
    If you need to set environment specific but sensitive data, set them in your .zprofile or .bash_profile. Do not include them here.

  Contribution:
    For contributions, please fork this repository and submit a pull request.
