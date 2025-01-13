#!/bin/sh

set -e

echo "Updating macOS..."
sudo softwareupdate -i -a

if ! command -v brew >/dev/null 2>&1; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi

brew install vim tmux curl

curl -o ~/.vimrc https://raw.githubusercontent.com/ajdinre/config/main/.vimrc
curl -o ~/.tmux.conf https://raw.githubusercontent.com/ajdinre/config/main/.tmux.conf

brew install python
brew install go
brew install --cask docker
brew install --cask visual-studio-code
brew install --cask google-chrome
brew install --cask slack
brew install --cask zoom

curl -o ~/wall.png "https://dummyimage.com/3024x%201964/000/000000"

defaults write com.apple.dock tilesize -int 36
defaults write com.apple.dock magnification -bool false
killall Dock

