#!/usr/bin/env zsh

#

# install_env.zsh: Installs a variety of applications on Ubuntu 24.

# Run with:

# chmod +x install_env.zsh

# ./install_env.zsh

#

# 1. Update & upgrade system

sudo apt update -y && sudo apt upgrade -y

# 2. Basic developer tools and extra repos

sudo apt install -y wget curl /_gnupg lsb-release software-properties-common apt-transport-https ca-certificates _/

# 3. Python 3 & pip

# Ubuntu 24 ships with Python 3 by default, but to ensure:

sudo apt install -y python3 python3-venv python3-dev

# Upgrade pip to specific version

sudo apt install -y python3-pip

# 4. Terminator

sudo apt install -y terminator

# 5. Oh-My-Zsh with powerlevel10k

# Install Zsh

sudo apt install -y zsh

# Install Oh-My-Zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# note to self: check my current .zshrc and figure out how to add that to this script

# Install powerlevel10k

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

# 6. VS Code

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update -y
sudo apt install -y code

# 7. Edge Browser

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/msedge.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/msedge.gpg] https://packages.microsoft.com/repos/edge stable main" | sudo tee /etc/apt/sources.list.d/edge.list
sudo apt update -y
sudo apt install -y microsoft-edge-stable

# 8. Google Chrome

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/chrome.deb
sudo dpkg -i /tmp/chrome.deb || sudo apt -f install -y

# 9. Firefox & Firefox Developer Edition

# Normal Firefox from official repos

sudo apt install -y firefox

# Developer Edition often must be installed manually or via Snap:

wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US" -O Firefox-dev.tar.bz2

# 10. OBS Studio

# this one's not working

sudo apt install -y obs-studio

# 11. VLC Media Player

sudo apt install -y vlc

# 12. Discord

wget "https://discord.com/api/download?platform=linux&format=deb" -O /tmp/discord.deb
sudo dpkg -i /tmp/discord.deb || sudo apt -f install -y

# 13. RuneScape Launcher (Snap)

sudo snap install runescape --beta

# 14. Nautilus

sudo apt install -y nautilus

# 15. Blender

sudo snap install blender --channel=4.x/stable

# 16. Htop

# ubuntu comes with htop

sudo apt install -y htop

# 17. Unity Editor

# Usually installed via Unity Hub (manual .AppImage or official instructions)

# Example with official deb (Unity Hub):

wget https://public-cdn.cloud.unity3d.com/hub/prod/UnityHub.AppImage -O $HOME/UnityHub.AppImage
chmod +x $HOME/UnityHub.AppImage
echo "Unity Hub downloaded. Run ~/UnityHub.AppImage to install the Unity editor."

# 18. NVIDIA Omniverse Apps (manual / launcher)

echo "Please refer to NVIDIA Omniverse documentation for manual installation:
https://docs.omniverse.nvidia.com"

# 19. Unreal Engine

echo "Unreal Engine 5.3 typically installed via Epic Games or source build.
See: https://docs.unrealengine.com/5.3"

# 20. Steam

sudo apt install -y steam

# maybe "sudo apt install steam"

# 21. Lutris

sudo add-apt-repository ppa:lutris-team/lutris -y
sudo apt update -y
sudo apt install -y lutris

# 22. Google Earth

wget https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb -O /tmp/earth.deb
sudo dpkg -i /tmp/earth.deb || sudo apt -f install -y

# 23. MuseScore 2

# Likely must be installed manually (older version 2.3.2). Use Snap for stable:

sudo snap install musescore

# 24. LibreOffice

sudo apt install -y libreoffice

# 25. Figma (unofficial Linux builds or web)

sudo snap install figma-linux --beta

# 26. Vite (via npm)

sudo apt install -y nodejs npm
sudo npm install -g vite

# 27. MySQL Workbench

sudo apt install -y mysql-workbench

# 28. PGAdmin4

# Official repository:

curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | gpg --dearmor | sudo tee /usr/share/keyrings/pgadmin.gpg > /dev/null
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pgadmin.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/focal pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list'
sudo apt update -y
sudo apt install -y pgadmin4

# 29. DaVinci Resolve

echo "DaVinci Resolve requires manual .deb or .run from https://www.blackmagicdesign.com/support/"

# 30. Zoom

wget https://zoom.us/client/latest/zoom_amd64.deb -O /tmp/zoom.deb
sudo dpkg -i /tmp/zoom.deb || sudo apt -f install -y

# 31. Remmina

sudo apt install -y remmina

# 32. Wine / Winetricks

# already installed

sudo apt install -y wine winetricks

# 33. XTerm

sudo apt install -y xterm

# 34. Vim / Vi / Neovim / Nano

# nano already installed

sudo apt install -y vim nano neovim

# 35. GNOME Tweaks

sudo apt install -y gnome-tweaks

# 36. Postman

sudo snap install postman

# 37. rogauracore

# might not want to have, just for laptop

# Might require manual build from GitHub

sudo apt install -y libusb-1.0-0-dev
git clone https://github.com/wroberts/rogauracore.git /tmp/rogauracore
cd /tmp/rogauracore
make
sudo make install
cd -

# 38. GNOME Extensions (Dash-to-Panel, ArcMenu, Blur my Shell, Color Picker, Emoji Copy)

# figure this out

echo "Extensions often installed via https://extensions.gnome.org or 'gnome-extensions' CLI.
Search and install:
Dash-to-Panel, ArcMenu, Blur my Shell, Color Picker, Emoji Copy
or use a browser extension to manage them."

echo "All base installations attempted. Manual steps for some tools may still be required."

# 39. C++

# 40. Typescript

# 41. Node

# 42. python

#!/usr/bin/env zsh

#

# install_languages_ubuntu.zsh

#

# Usage:

# chmod +x install_languages_ubuntu.zsh

# ./install_languages_ubuntu.zsh

# 1. Update & upgrade system

sudo apt update -y && sudo apt upgrade -y

# 2. Python 3

# Ubuntu 24 typically ships with Python 3 or higher by default

# but to ensure we have python3 specifically:

sudo apt install -y python3 python3-dev python3-venv

# 3. Node.js 18.18.0 (Using NodeSource or nvm)

# Option A: NodeSource official repo (may not perfectly pin 18.18.0)

# curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -

# nodejs already installed ealier in the script

# sudo apt install -y nodejs

#

# Option B: nvm (allows precise version pinning)

if [[! -d "$HOME/.nvm"]]; then
echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | zsh
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && echo "${HOME}/.nvm" || echo "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
fi

nvm install 18.18.0
nvm use 18.18.0
nvm alias default 18.18.0

# 4. TypeScript 5.1.6

sudo npm install -g typescript

#!/usr/bin/env zsh

#

# install_vscode_extensions.zsh

# Run AFTER VS Code is installed:

# chmod +x install_vscode_extensions.zsh

# ./install_vscode_extensions.zsh

#

# 1. Make sure 'code' command is in PATH

if ! command -v code &> /dev/null; then
echo "VS Code CLI not found. Please install or verify PATH."
exit 1
fi

# 2. Install/Update Git (System-level)

sudo apt update -y

# (Exact pinned version may not be available in official repos, but try)

sudo apt install -y git

# 3. Install VS Code extensions:

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
code --install-extension ms-python.debugger # Python Debugger
code --install-extension ms-vscode-remote.remote-ssh # Remote - SSH
code --install-extension wayou.vscode-todo-highlight # TODO Highlight
code --install-extension Gruntfuggly.todo-tree # TODO Tree

# (Settings Sync is built-in to newer VS Code—no extra extension needed)

code --install-extension vscodevim.vim # Vim

# "Vim cheatsheet" might be:

# "shakram02.vim-cheatsheet" or "vscodevim.vim-cheatsheet"

# Adjust if needed:

code --install-extension shakram02.vim-cheatsheet # Vim cheatsheet
code --install-extension GitHub.github-vscode-theme # GitHub Theme
code --install-extension gabrielgrinberg.glassit # GlassIt-VSC

echo "VS Code extensions installed/updated. Done!"

# make terminal transparent

# add a validation step that checks if all packages are installed and reports which aren't

# check versions to see which version and dependencies i should have (ties in to which package manager to use)

# install background image and configure to use

# add Hyprland/Awesomewm

