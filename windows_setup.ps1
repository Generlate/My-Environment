# configures powershell to allow script execution
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# run
.\windows_setup.ps1

# Check for (or install) Chocolatey

if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
Write-Host "Chocolatey not found. Installing..."
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
} else {
Write-Host "Chocolatey is already installed."
}

# Upgrade choco & default packages
choco upgrade chocolatey -y
choco feature enable -n=allowGlobalConfirmation

# Blender
choco install blender -y

# Visual Studio 2022 Community
# this one hung but installed?
choco install visualstudio2022community --package-parameters "--allWorkloads --includeRecommended --includeOptional" -y

# GeForce Experience
# couldnt figure out how to install the general nvidia app, might be bc it's too new
winget install Nvidia.GeForceNow

# install omniverse
winget install Nvidia.Omniverse

# install CUDA
winget install Nvidia.CUDA

# WizTree
choco install wiztree -y

# P4V (Perforce Visual Client)
choco install p4v -y

# Minecraft
winget install Mojang.MinecraftLauncher

# Windows Subsystem for Linux
# didnt work properly, try on a new install
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# installs ubuntu to wsl2
wsl --install -d Ubuntu
# wsl ubuntu won't show until system restart
# wsl ubuntu says additional virtualization settings need to be configured in bios


# MuseScore
winget install MuseScore.MuseSore

# PostgreSQL 13
winget install "PostgreSQL 17"

# PGAdmin
# already installed. check if it installs with postgresql
winget install PostgreSQL.pgAdmin
choco install pgadmin4 -y

# Python 3
# i think python was installed elsewhere? windows might come with python already.
choco install python --version=3.10.5 -y

# Vulkan SDK (1.3.204.1)
winget install -y KhronosGroup.VulkanSDK

# WinRAR
choco install winrar -y

# Steam Link
winget install steamlink -y

# Logi Tune 3.6.373
choco install logi-tune

# Microsoft SQL Server 2019 LocalDB
# figure out which one is installed on the desktop pc
# GitHub CLI
choco install gh -y

# manually install AutoCAD, Sketchup, Rhino, Adobe CC, Illustrator, Indesign, MSI Center, Atem Software Control, Blackmagic Media Express, Blackmagic Desktop Video, Blackmagic Disk Speed Test, vroid studio, genshin impact and hoyoplay, id mixer (audient id44 software), fl studio 20, komplete kontrol, kontakt, native access, nvidia nsight systems 2020.3.2, microsoft .net runtime 6.0.31 (x64), microsoft .net framework 4.8 sdk, davinci resolve project server,  

# Node.js 18.18.0 (LTS)
choco install nodejs-lts --version=18.18.0 -y

# TypeScript 5.1.6
# works but connections to node and npm might be off, check this on a new vm
npm install -g typescript@5.1.6

# C++ (Visual C++ or MinGW with g++ 13.2.0)
# On Windows, 'C++' often refers to Visual C++ (via Visual Studio).
# For GCC 13.2, we can install 'mingw' if available:
choco install visualstudio2022buildtools --package-parameters "--add Microsoft.VisualStudio.Workload.VCTools --quiet --norestart"
# or
choco install mingw --version=13.2.0 -y

# add a validation step that checks if all packages are installed and reports which aren't
# check versions to see which version and dependencies i should have (ties in to which package manager to use)
# install background image and configure to use
# add Hyprland/Awesomewm
# try installing wsl2 ubuntu first, then installing with apt or something.
# install_vscode_extensions.zsh
# Run AFTER VS Code is installed:
# chmod +x install_vscode_extensions.zsh
# ./install_vscode_extensions.zsh
# Make sure 'code' command is in PATH

if ! command -v code &> /dev/null; then
echo "VS Code CLI not found. Please install or verify PATH."
exit 1
fi

# Install/Update Git (System-level)
sudo apt update -y

# (Exact pinned version may not be available in official repos, but try)
sudo apt install -y git

# Install VS Code extensions:
# setting sync might auto install extensions
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
code --install-extension vscodevim.vim # Vim
code --install-extension shakram02.vim-cheatsheet # Vim cheatsheet
code --install-extension GitHub.github-vscode-theme # GitHub Theme
code --install-extension gabrielgrinberg.glassit # GlassIt-VSC
echo "VS Code extensions installed/updated. Done!"

# decide if i want to use chocolatey or winget
# make terminal transparent
