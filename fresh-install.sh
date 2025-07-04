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
cp zsh-aliases ~/.zsh_aliases
echo '[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases' >> ~/.zshrc # Link aliases
echo 'setopt autocd' >> ~/.zshrc # Shortcut for file-tree navigation
# Pimp Iterm2
brew install starship # Shell prompt
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
starship preset catppuccin-powerline --output ~/.config/starship.toml
brew install lsd # Replacement for ls

# Latest version of .NET SDK
brew install --cask dotnet-sdk
# Optional: previous version of .NET
brew tap isen-ng/dotnet-sdk-versions
brew install --cask dotnet-sdk8

# Jetbrains Toolbox for Rider installation/updates
brew install --cask jetbrains-toolbox

# Brave browser
brew install --cask brave-browser

# Github 
brew install gh # Github CLI
# Convenient github shortcuts
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.br branch
# Git global settings
git config --global user.name "Joachim V. Hasseldam"
git config --global gpg.format ssh # Use the ssh key to sign commits
git config --global commit.gpgsign true

# Proton Drive
brew install --cask proton-drive

# Set VS Code settings
cp vs-code-settings.json ~/Library/Application\ Support/Code/User/settings.json

# Docker 
brew install --cask docker-desktop
# Free and open source alternative for Docker Desktop
# This solution requires docker cli and docker-buildx plugin to be installed as well
brew install colima docker docker-buildx
# Docker plugins
brew install docker-buildx
cp colima-docker-config.json ~/.docker/config.json

# Yubikey manager 
brew install --cask yubico-yubikey-manager
# If the pairing menu is not showing up after setting up PIV in the manager, then run: sc_auth pairing_ui -f

# PgAdmin
brew install --cask pgadmin4

# 1Password
brew install --cask 1password