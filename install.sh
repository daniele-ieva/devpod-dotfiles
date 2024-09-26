#!/usr/bin/env sh

# install dependencies (using brew)
# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

printf '%s\n' '' 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/vscode/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install node neovim gcc luarocks


cp -r ./nvim/ $HOME/.config/
