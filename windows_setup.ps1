# configures powershell to allow script execution
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# run: .\windows_setup.ps1

# Check for (or install) Chocolatey
# installing choco failed, try again
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
choco install visualstudio2022community --package-parameters `
"--add Microsoft.VisualStudio.Workload.CoreEditor `
--add Microsoft.VisualStudio.Workload.Node `
--add Microsoft.VisualStudio.Workload.Python `
--add Microsoft.VisualStudio.Workload.NativeDesktop `
--includeRecommended" -y


# GeForce Experience
# couldnt figure out how to install the general nvidia app, might be bc it's too new
winget install Nvidia.GeForceNow -y

# install omniverse
# failed for some reason
winget install Nvidia.Omniverse -y

# install CUDA
# failed for some reason
winget install Nvidia.CUDA -y

# WizTree
choco install wiztree -y

# P4V (Perforce Visual Client)
# failed?
choco install p4v -y

# Minecraft
winget install Mojang.MinecraftLauncher

# Windows Subsystem for Linux
# didnt work properly, try on a new install
# check whether this is wsl or wsl2
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
choco install -y python --version=3.10.5 

# Vulkan SDK (1.3.204.1)
winget install -y KhronosGroup.VulkanSDK

# WinRAR
choco install -y winrar

# Steam Link
winget install -y steamlink 

# Logi Tune 3.6.373
choco install logi-tune

# Microsoft SQL Server 2019 LocalDB
# figure out which one is installed on the desktop pc

# Install/Update Git (System-level)
winget install --id Git.Git -e --source winget

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

# code 
choco install vscode -y


# Install VS Code extensions:
# setting sync might auto install extensions
# failed bc code wasn't installed
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

# add validation and logs
# decide if i want to use chocolatey or winget
# make terminal transparent
# look at other install repos to get ideas
# add a validation step that checks if all packages are installed and reports which aren't
# check versions to see which version and dependencies i should have (ties in to which package manager to use)
# install background image and configure to use
# add Hyprland/Awesomewm
# try installing wsl2 ubuntu first, then installing with apt or something.


# validation step that checks whether the programs were installed properly
# List of required CLI-based programs
$requiredPrograms = @("git", "node", "python", "code")

# Function to check if a CLI command exists
function Check-Command($command) {
    if (Get-Command $command -ErrorAction SilentlyContinue) {
        return $true
    } else {
        return $false
    }
}

# Arrays to store installed and missing programs
$installedPrograms = @()
$missingPrograms = @()

# Check CLI-based programs
foreach ($program in $requiredPrograms) {
    if (Check-Command $program) {
        $installedPrograms += $program
    } else {
        $missingPrograms += $program
    }
}

# Check installed applications from the Windows Registry
$requiredApps = @("Google Chrome", "Visual Studio Code", "Python 3.10")
$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*"

foreach ($app in $requiredApps) {
    if (Get-ItemProperty -Path $registryPath | Where-Object { $_.DisplayName -like "*$app*" }) {
        $installedPrograms += $app
    } else {
        $missingPrograms += $app
    }
}

# Output the results
Write-Host "`n=== Installed Programs ===" -ForegroundColor Green
if ($installedPrograms.Count -gt 0) {
    $installedPrograms | ForEach-Object { Write-Host $_ -ForegroundColor Green }
} else {
    Write-Host "No programs found." -ForegroundColor Yellow
}

Write-Host "`n=== Missing Programs ===" -ForegroundColor Red
if ($missingPrograms.Count -gt 0) {
    $missingPrograms | ForEach-Object { Write-Host $_ -ForegroundColor Red }
} else {
    Write-Host "All required programs are installed!" -ForegroundColor Green
}

# Exit with error if any programs are missing
if ($missingPrograms.Count -gt 0) {
    exit 1
} else {
    exit 0
}
