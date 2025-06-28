#!/bin/zsh

# Install and prepare Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update

# Fonts
brew install --cask font-meslo-lg-nerd-font
brew install --cask font-fira-code

# Visual Studio Code
brew install --cask visual-studio-code
code --install-extension vscodevim.vim
code --install-extension zhuangtongfa.Material-theme
code --install-extension streetsidesoftware.code-spell-checker

# Install Iterm2
brew install --cask iterm2
brew install starship # Shell prompt
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
starship preset catppuccin-powerline --output ~/.config/starship.toml
# ls replacement
brew install lsd

# Latest version of .NET SDK
brew install --cask dotnet-sdk

# Brave browser
brew install --cask brave-browser

# Github CLI
brew install gh

# Proton Drive
brew install --cask proton-drive