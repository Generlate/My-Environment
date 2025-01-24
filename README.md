Ubuntu Setup <br>
Ubuntu == 23.10 <br>
<br>
Python == 3.11.0 <br>
Terminator == 2.1.3 <br>
Oh-My-Zsh with powerlevel10k <br>
vscode == 1.88.1 <br>
Edge Browser == 124.0.2478.67 <br>
Google Chrome == 124.0.6367.91 <br>
Firefox == 125.0.2 <br>
Firefox Developer == <br>
OBSstudio == 30.0.2 <br>
VLC Media Player == 3.0.18
Discord == 0.0.51 <br>
runescape launcher == 2.2.4 <br>
Nautilus == 45.rc <br>
Blender == 4.1.1 <br>
Htop == 3.2.2 <br>
Unity == 3.8.0 <br>
Omniverse == <br>
Omniverse Code == 2022.3.3 <br>
USD Composer == 2023.1.0 <br>
USD Presenter == 2022.3.7 <br>
Kit == 105.1.2 <br>
Cache == 2023.2.3 <br>
Nucleus Navigator == 3.3.0 <br>
Unreal Engine == 5.3 <br>
Steam == 1.0.0.78 <br>
Lutris == 0.5.12 <br>
GNU == 2.10.36 <br>
Google Earth == 7.3.6 <br>
MuseScore 2 == 2.3.2 <br>
LibreOffice == 7.6.5.2 <br>
Figma == <br>
Vite == <br>
MySQL workbench == 8.0.36 <br>
PGAdmin4 == <br>
Davinci Resolve == <br>
Zoom == <br>
Remmina == 1.4.31 <br>
Wine / Winetricks == 8.0.1 <br>
XTerm == <br>
Vim == 9.0 <br>
Vi == 9.0 <br>
nvim == 9.0 <br>
Nano == 7.2 <br>
Gnome Tweaks == 42.beta <br>
Postman == 10.23.0<br>
rogauracore == 1.6 <br>
pip == 23.1.2
<br>
Extensions <br>
Dash-to-Panel == 60 <br>
ArcMenu == 56 <br>
Blur my shell == 58 <br>
Color Picker == 40 <br>
Emoji Copy == 21 <br>
<br>
VsCode Extensions <br>
Auto Rename Tag == 0.1.10 <br>
Black Formatter == 2024.2.0 <br>
azure App Service == 0.25.2 <br>
Azure Resources == 0.8.6 <br>
C/C++ (intellisense) == 1.19.9 <br>
Code Spell Checker == 3.0.1 <br>
ESLint == 2.4.4 <br>
Even Better TOML == 0.19.2 <br>
Flake8 == 2023.10.0 <br>
Github Actions == 0.26.2 <br>
Github Copilot == 1.184.0 <br>
Github Copilot Chat == 0.14.1 <br>
gitLens == 14.9.1 <br>
indent-rainbow == 8.3.1 <br>
isort == 2023.10.1 <br>
Jupyter == 2024.3.1 <br>
Live Server == 5.7.9 <br>
Mypy Type Checker == 2023.6.0 <br>
Prettier == 10.4.0 <br>
Pylance == 2024.4.1 <br>
Python == 2024.4.1 <br>
Python Debugger == 2024.4.0 <br>
Remote - SSH == 0.110.1 <br>
TODO Highlight == 1.0.5 <br>
TODO tree == 0.226 <br>
Settings Sync is set up <br>
Vim == 1.27.2 <br>
Vim cheatsheet == 0.0.1 <br>
Github Theme == 6.3.4 <br>
GlassIt-VSC == 0.2.6 <br>
Git == 2.40.1 <br>
<br>
Windows Setup <br>
Windows == 11 <br>
AutoCad == <br>
Sketchup == <br>
Rhino == <br>
Photoshop == <br>
Illustrator == <br>
Indesign == <br>
choco == <br>
msi center == <br>
blender == <br>
Genshin Impact == <br>
Visual Studio == 2022 <br>
Geforce Experience == <br>
WizTree == <br>
Sketchup 2024 == <br>
VRoidStudio == 1.22.0 <br>
P4v == <br>
Omniverse == <br>
Minecraft == <br>
Focusrite Control == <br>
FL Studio 20 == <br>
Komplete Kontrol == <br>
Kontakt == <br>
Native Access == <br>
Davinci Resolve Project Server == <br>
Atem Software Control == <br>
Blackmagic Media Express == <br>
Blackmagic Desktop Video == <br>
Blackmagic Disk Speed Test == <br>
Windows Subsystem Linux == <br>
Musescore == <br>
PostgreSQL == 13 <br>
PGAdmin == <br>
python3 == 3.10.5 (64-bit) & 3.10.11 <br>
vive hub == <br>
Vive Console == <br>
Vulkan SDK == 1.3.204.1 <br>
WinRAR == <br>
Steam Link == <br>
Nvidia Nsight Systems == 2020.3.2 <br>
Microsoft .NET Runtime == 6.0.31 (x64) <br>
Logi Tune == 3.6.373 <br>
Microsoft .NET Framework == 4.8 SDK <br>
Microsoft SQL Server 2019 LocalDB == <br>
GitHub CLI == <br>
<br>
Languages <br>
Python == 3.11 <br>
Node == 18.18.0 <br>
Typescript == 5.1.6 <br>
C++ == 13.2.0 <br>

venv with python 3.11 in it at home directory
/home/templates/text_file to make text files with right click
add firefox to startup apps

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

# 21. Lutris

sudo add-apt-repository ppa:lutris-team/lutris -y
sudo apt update -y
sudo apt install -y lutris

# 22. Google Earth

wget https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb -O /tmp/earth.deb
sudo dpkg -i /tmp/earth.deb || sudo apt -f install -y

# 23. MuseScore 2

# Likely must be installed manually (older version 2.3.2). Use Snap for stable:

sudo snap install musescore --channel=2.x/stable

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

sudo apt install -y wine winetricks

# 33. XTerm

sudo apt install -y xterm

# 34. Vim / Vi / Neovim / Nano

sudo apt install -y vim nano neovim

# 35. GNOME Tweaks

sudo apt install -y gnome-tweaks

# 36. Postman

sudo snap install postman

# 37. rogauracore

# Might require manual build from GitHub

sudo apt install -y libusb-1.0-0-dev
git clone https://github.com/wroberts/rogauracore.git /tmp/rogauracore
cd /tmp/rogauracore
make
sudo make install
cd -

# 38. GNOME Extensions (Dash-to-Panel, ArcMenu, Blur my Shell, Color Picker, Emoji Copy)

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

npm install -g typescript@5.1.6

# 5. C++ (GCC 13.2.0)

# Ubuntu 24 should have GCC 13.x in its repos. We install build-essential (includes g++).

sudo apt install -y build-essential

# Confirm version (should be 13.2 or close).

gcc --version
g++ --version

echo "\nAll requested languages installed on Ubuntu 24!"

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

# install_windows_env.ps1

# Usage:

# 1. Right-click > "Run with PowerShell (Admin)" OR

# 2. Open PowerShell (Admin) & run: .\install_windows_env.ps1

# 1. Check for (or install) Chocolatey

if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
Write-Host "Chocolatey not found. Installing..."
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
} else {
Write-Host "Chocolatey is already installed."
}

# 2. Upgrade choco & default packages

choco upgrade chocolatey -y
choco feature enable -n=allowGlobalConfirmation

# 3. Example installs for software typically available in Chocolatey

# Blender

choco install blender -y

# Genshin Impact (community package, if present)

choco install genshin-impact -y

# Visual Studio 2022 Community

# (If you need Pro/Enterprise, adjust accordingly)

choco install visualstudio2022community --package-parameters "--allWorkloads --includeRecommended --includeOptional" -y

# GeForce Experience (not always in official choco repos; see Winget alternative)

# If missing in choco, you can do:

# winget install --id NVIDIA.GeForceExperience

choco install nvidia-geforce-experience -y

# WizTree

choco install wiztree -y

# VRoid Studio (community might be outdated / partial)

choco install vroid-studio -y

# P4V (Perforce Visual Client)

choco install p4v -y

# Minecraft (this is the Java Edition from Microsoft Store)

# Typically installed via Microsoft Store or Winget:

# winget install --id Mojang.MinecraftWindows

Write-Host "Minecraft is typically installed via the Microsoft Store or winget."

# Focusrite Control (not in official choco)

Write-Host "Download Focusrite Control from official site: https://focusrite.com/en/focusrite-control"

# FL Studio 20

# Typically not on choco. If needed:

Write-Host "Download FL Studio from https://www.image-line.com/"

# Komplete Kontrol / Kontakt / Native Access

Write-Host "Install Native Instruments tools via Native Access: https://www.native-instruments.com/en/specials/native-access/"

# DaVinci Resolve Project Server / ATEM Software Control / Blackmagic apps

Write-Host "Install from official Blackmagic installers: https://www.blackmagicdesign.com/support"

# Windows Subsystem for Linux

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Also typically need to install a Linux distro from Microsoft Store, or:

# wsl --install -d Ubuntu

Write-Host "WSL enabled. Please reboot and install a specific distro if needed."

# MuseScore

choco install musescore -y

# PostgreSQL 13

# By default, choco's 'postgresql' might install a newer version.

# For version 13, see older package or official installer:

choco install postgresql --version=13.3 -y

# PGAdmin

choco install pgadmin4 -y

# Python 3.x (3.10.5 or 3.10.11) – multiple side-by-side versions are tricky

# Attempt pinned version if available:

choco install python --version=3.10.5 -y
Write-Host "Installing an additional 3.10.11 side-by-side is non-trivial. Consider using virtual environments."

# Vive Hub / Vive Console

Write-Host "Download Vive software from: https://www.vive.com/"

# Vulkan SDK (1.3.204.1)

Write-Host "Download Vulkan SDK from: https://vulkan.lunarg.com/sdk/home"

# WinRAR

choco install winrar -y

# Steam Link

choco install steamlink -y

# Nvidia Nsight Systems 2020.3.2

Write-Host "Download from https://developer.nvidia.com/nsight-systems"

# Microsoft .NET Runtime 6.0.31 (x64)

choco install microsoft-net-runtime --version=6.0.31 -y

# Logi Tune 3.6.373

Write-Host "Download from official Logitech site: https://www.logitech.com/"

# May not be on choco; check:

# choco search logi-tune

# Microsoft .NET Framework 4.8 SDK

Write-Host "Download from Microsoft: https://dotnet.microsoft.com/en-us/download/dotnet-framework/net48"

# Microsoft SQL Server 2019 LocalDB

choco install sqlserver-2019 -y

# Then configure LocalDB instance

# GitHub CLI

choco install gh -y

Write-Host "=============================================="
Write-Host " NOTE: Some apps (AutoCAD, SketchUp, Rhino, Adobe CC, Omniverse, etc.)"
Write-Host " require manual or vendor-specific installs. See references below."
Write-Host "=============================================="

# 4. Manual / Third-Party Tools

Write-Host "AutoCAD, SketchUp (Pro/Make/2024), Rhino, Photoshop, Illustrator, InDesign, Omniverse, etc. are typically installed via official installers or subscription websites."

Write-Host "Done. Review any messages above for manual steps."

# install_languages_windows.ps1

#

# Usage (as Administrator in PowerShell):

# Set-ExecutionPolicy Bypass -Scope Process -Force

# .\install_languages_windows.ps1

# 1. Ensure Chocolatey is installed

if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
Write-Host "Chocolatey not found. Installing..."
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
} else {
Write-Host "Chocolatey is already installed."
}

choco upgrade chocolatey -y
choco feature enable -n=allowGlobalConfirmation

# 2. Python 3

choco install python --version=3.11.4 -y

# (Exact 3 might differ if 3 specifically is not available in choco repos.)

# 3. Node.js 18.18.0 (LTS)

# Attempt pinned version if the package exists in the repo:

choco install nodejs-lts --version=18.18.0 -y

# If that exact version is missing from Chocolatey, it may install the latest 18.x LTS.

# 4. TypeScript 5.1.6

# Once Node.js is installed, we can install TypeScript globally:

npm install -g typescript@5.1.6

# 5. C++ (Visual C++ or MinGW with g++ 13.2.0)

# On Windows, 'C++' often refers to Visual C++ (via Visual Studio).

# For GCC 13.2, we can install 'mingw' if available:

choco install mingw --version=13.2.0 -y

# If pinned 13.2.0 is missing, it will install the latest MinGW64 from the repo.

Write-Host "`nAll requested languages installed on Windows 11 (via Chocolatey)."
