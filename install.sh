#!/usr/bin/env sh

# install dependencies (using brew)
# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install node neovim gcc luarocks


cp -r ./nvim/ $HOME/.config/
