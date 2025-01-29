# configures powershell to allow script execution
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

Write-Host "Installing Chocolatey"
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Write-Host "Upgrading choco and default packages"
choco upgrade chocolatey -y
choco feature enable -n=allowGlobalConfirmation

Write-Host "Installing Blender"
choco install blender -y

Write-Host "Installing Visual Studio 2022 Community"
choco install visualstudio2022community --package-parameters `
"--add Microsoft.VisualStudio.Workload.CoreEditor `
--add Microsoft.VisualStudio.Workload.Node `
--add Microsoft.VisualStudio.Workload.Python `
--add Microsoft.VisualStudio.Workload.NativeDesktop `
--includeRecommended" -y

# manually install the Nvidia App

Write-Host "Installing GeForce Experience"
winget install Nvidia.GeForceNow

Write-Host "Installing Omniverse"
winget install Nvidia.Omniverse 

Write-Host "Installing omniverse code"

Write-Host "Installing CUDA"
winget install Nvidia.CUDA

Write-Host "Installing WizTree"
choco install wiztree -y

Write-Host "Installing P4V (Perforce Visual Client)"
winget install Perforce.P4V 

Write-Host "Installing Minecraft"
winget install Mojang.MinecraftLauncher

# Write-Host "Installing Windows Subsystem for Linux"
# didnt work properly, try on a new install
# check whether this is wsl or wsl2
# dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Write-Host "Installing Ubuntu to wsl2"
# wsl --install -d Ubuntu
# wsl ubuntu won't show until system restart
# wsl ubuntu says additional virtualization settings need to be configured in bios

Write-Host "Installing MuseScore"
winget install MuseScore.MuseScore






Write-Host "Installing msi center"
winget install "msi center" --accept-package-agreements --accept-source-agreements


# manually install atem software control, blackmagic media express, blackmagic desktop video, blackmagic disk speed test, hoyoplay, id mixer, fl studio 20, komplete kontrol, kontakt, native access, Kit, davinci  resolve, runescape, davinci resolve project server


Write-Host "Installing vroid studio"
winget install "VRoid Studio"


Write-Host "Installing unreal engine"
winget install EpicGames.EpicGamesLauncher


Write-Host "Installing steam"
choco install steam


Write-Host "Installing discord"
winget install Discord.Discord


Write-Host "Installing google earth"
winget install Google.EarthPro


Write-Host "Installing figma"
winget install figma


Write-Host "Installing vite"
npm install vite

Write-Host "Installing mysql workbench"
winget install Oracle.MySQL


Write-Host "Installing zoom"
winget install Zoom.Zoom


Write-Host "Installing vim"
winget install vim.vim


Write-Host "Installing nvim"
winget install Neovim.Neovim

Write-Host "Installing postman"
winget install Postman.Postman


Write-Host "Installing .NET"
winget install --id Microsoft.DotNet.SDK.8


Write-Host "Installing PostgreSQL 13"
winget install "PostgreSQL 17"

Write-Host "Installing Python3"
choco install -y python3; $env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)

Write-Host "Installing Vulkan SDK"
winget install -y KhronosGroup.VulkanSDK

Write-Host "Installing WinRAR"
choco install winrar

Write-Host "Installing Steam Link"
winget install steamlink 

Write-Host "Installing Logi Tune"
choco install logi-tune

Write-Host "Installing Microsoft SQL Server 2019 LocalDB"
# figure out which one is installed on the desktop pc

Write-Host "Installing Git"
winget install --id Git.Git -e --source winget

Write-Host "Installing GitHub CLI"
choco install gh -y; $env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)


Write-Host "Installing Node.js"
choco install nodejs-lts --version=18.18.0 -y; $env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine) 
Write-Host "Installing TypeScript"; npm install -g typescript@5.1.6

Write-Host "Installing C++"
choco install visualstudio2022buildtools --package-parameters "--add Microsoft.VisualStudio.Workload.VCTools --quiet --norestart" -y
# or
# choco install mingw --version=13.2.0 -y
# $env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)

Write-Host "Installing Visual Studio Code"
choco install vscode -y; $env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)


Write-Host "Installing Visual Studio Code Extensions"
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


Write-Host "Manually Install: autocad, illustrator, photoshop, indesign, sketchup, rhino"

# TODO: make the required programs list the one specified in the README.md. add step to load that list and use it.
# TODO: add validation and logs
# TODO: decide if i want to use chocolatey or winget
# TODO: make terminal transparent
# TODO: look at other install repos to get ideas
# TODO: add a validation step that checks if all packages are installed and reports which aren't
# TODO: check versions to see which version and dependencies i should have (ties in to which package manager to use)
# TODO: install background image and configure to use
# TODO: try installing wsl2 ubuntu first, then installing with apt or something.
# TODO: add log of each install
# TODO: decide which versions to install

.\windows_validator.ps1