#!/usr/bin/env sh

# Check if dependencies are already installed 
if [ ! $(which brear 2> /dev/null) ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    printf '%s\n' '' 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/vscode/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    brew install node neovim gcc luarocks
fi

cp -r ./nvim/ $HOME/.config/
