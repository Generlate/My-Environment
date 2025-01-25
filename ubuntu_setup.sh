#!/usr/bin/env zsh

chmod +x ubuntu_setup.sh
# run with: ./ubuntu_setup.sh

# Update & upgrade system
sudo apt update -y && sudo apt upgrade -y

# Install Zsh
sudo apt install -y zsh

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# note to self: check my current .zshrc and figure out how to add that to this script
# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

# Basic developer tools and extra repos
# these might already be installed.. i dont think curl is
sudo apt install -y wget curl /_gnupg lsb-release software-properties-common apt-transport-https ca-certificates _/

# Python 3 & pip
# Ubuntu 24 ships with Python 3 by default, but to ensure:
sudo apt install -y python3 python3-venv python3-dev
# Upgrade pip to specific version
sudo apt install -y python3-pip

# Terminator
sudo apt install -y terminator

# VS Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update -y
sudo apt install -y code

# Edge Browser
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/msedge.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/msedge.gpg] https://packages.microsoft.com/repos/edge stable main" | sudo tee /etc/apt/sources.list.d/edge.list
sudo apt update -y
sudo apt install -y microsoft-edge-stable

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/chrome.deb
sudo dpkg -i /tmp/chrome.deb || sudo apt -f install -y
# somewhere around here, all installs failed: list of sources could not be read.
# Firefox 
sudo apt install -y firefox
# Firefox Developer, often must be installed manually or via Snap:
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US" -O Firefox-dev.tar.bz2

# OBS Studio
sudo snap install obs-studio

# VLC Media Player
sudo apt install -y vlc

# Discord
wget "https://discord.com/api/download?platform=linux&format=deb" -O /tmp/discord.deb
sudo dpkg -i /tmp/discord.deb || sudo apt -f install -y

# Nautilus
sudo apt install -y nautilus

# Blender
sudo snap install blender --channel=4.x/stable
#or
sudo snap install blender --classic

# Htop
# ubuntu comes with htop
sudo apt install -y htop

# Steam
sudo apt install -y steam

# Lutris
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo apt update -y
sudo apt install -y lutris

# Google Earth
wget https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb -O /tmp/earth.deb
sudo dpkg -i /tmp/earth.deb || sudo apt -f install -y

# MuseScore 2
sudo snap install musescore

# LibreOffice
sudo apt install -y libreoffice

# Figma 
sudo snap install figma-linux --beta

# Vite (via npm)
sudo apt install -y nodejs npm
sudo npm install -g vite

# MySQL Workbench
# didnt work
sudo apt install -y mysql-workbench

# PGAdmin4
curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | gpg --dearmor | sudo tee /usr/share/keyrings/pgadmin.gpg > /dev/null
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pgadmin.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/focal pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list'
sudo apt update -y
sudo apt install -y pgadmin4

# Zoom
wget https://zoom.us/client/latest/zoom_amd64.deb -O /tmp/zoom.deb
sudo dpkg -i /tmp/zoom.deb || sudo apt -f install -y

# Remmina
sudo apt install -y remmina

# Wine / Winetricks
# already installed
sudo apt install -y wine winetricks

# XTerm
sudo apt install -y xterm

# Neovim
sudo apt install -y neovim

# GNOME Tweaks
sudo apt install -y gnome-tweaks

# Postman
sudo snap install postman

# rogauracore
# might not want to have, just for laptop
# Might require manual build from GitHub
# sudo apt install -y libusb-1.0-0-dev
# git clone https://github.com/wroberts/rogauracore.git /tmp/rogauracore
# cd /tmp/rogauracore
# make
# sudo make install
# cd -

# Unity Editor
wget https://public-cdn.cloud.unity3d.com/hub/prod/UnityHub.AppImage -O $HOME/UnityHub.AppImage
chmod +x $HOME/UnityHub.AppImage
echo "Unity Hub downloaded. Run ~/UnityHub.AppImage to install the Unity editor."

# C++
sudo apt install g++ -y
sudo apt install build-essential
# cmake
sudo apt install cmake -y
# make
sudo apt install make
# gdb
sudo apt install gdb

# Node
sudo apt install -y nodejs npm

# Typescript
sudo npm install -g typescript

# Python 3
# Ubuntu 24 typically ships with Python 3 or higher by default
sudo apt install -y python3 python3-dev python3-venv

# Install VS Code extensions:
# TODO: check that these extension commands are valid
# with setting sync, extensions get installed automatically
code --install-extension formulahendry.auto-rename-tag # Auto Rename Tag
code --install-extension ms-python.black-formatter # Black Formatter
code --install-extension ms-azuretools.vscode-azureappservice # Azure App Service
code --install-extension msazurermtools.azurerm-vscode-tools # Azure Resources (ARM Tools)
code --install-extension ms-vscode.cpptools # C/C++ Intellisense
code --install-extension streetsidesoftware.code-spell-checker # Code Spell Checker
code --install-extension dbaeumer.vscode-eslint # ESLint
code --install-extension tamasfe.even-better-toml # Even Better TOML
code --install-extension ms-python.flake8 # Flake8
code --install-extension GitHub.vscode-github-actions # Github Actions
code --install-extension GitHub.copilot # GitHub Copilot
code --install-extension GitHub.copilot-chat # GitHub Copilot Chat
code --install-extension eamodio.gitlens # gitLens
code --install-extension oderwat.indent-rainbow # indent-rainbow
code --install-extension ms-python.isort # isort
code --install-extension ms-toolsai.jupyter # Jupyter
code --install-extension ritwickdey.liveserver # Live Server
code --install-extension ms-python.mypy-type-checker # Mypy Type Checker
code --install-extension esbenp.prettier-vscode # Prettier
code --install-extension ms-python.vscode-pylance # Pylance
code --install-extension ms-python.python # Python
code --install-extension ms-python.debugger # Python Debugger (this one failed)
code --install-extension ms-vscode-remote.remote-ssh # Remote - SSH
code --install-extension wayou.vscode-todo-highlight # TODO Highlight
code --install-extension Gruntfuggly.todo-tree # TODO Tree
code --install-extension vscodevim.vim # Vim
code --install-extension shakram02.vim-cheatsheet # Vim cheatsheet (this one failed)
code --install-extension GitHub.github-vscode-theme # GitHub Theme
code --install-extension gabrielgrinberg.glassit # GlassIt-VSC (this one failed)

# TODO: install nsight, cuda, cuddnn?, tensorrt?, omniverse, native access?, davinci resolve, blackmagic disk speed test, gimp, nvidia app, geforce experience, pycharm, rider, webstorm, unreal engine?, GNU, google earth, pip, nvidia omniverse, unreal engine, runescape (via steam), GNOME Extensions (Dash-to-Panel, ArcMenu, Blur my Shell, Color Picker, Emoji Copy)


# TODO: make terminal transparent

# TODO: add a validation step that checks if all packages are installed and reports which aren't

# TODO: check versions to see which version and dependencies i should have (ties in to which package manager to use)

# TODO: install background image and configure to use
# TODO: add Hyprland/Awesomewm
