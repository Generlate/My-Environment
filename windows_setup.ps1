# configures powershell to allow script execution
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
# run: .\windows_setup.ps1

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

Write-Host "Installing GeForce Experience"
# couldnt figure out how to install the general nvidia app, might be bc it's too new
# this through error bc flag might be in the wrong spot
winget install Nvidia.GeForceNow -y

Write-Host "Installing Omniverse"
# might need a -y
winget install Nvidia.Omniverse 

Write-Host "Installing CUDA"
winget install Nvidia.CUDA -y

Write-Host "Installing WizTree"
choco install wiztree -y

Write-Host "Installing P4V (Perforce Visual Client)"
winget install Perforce.P4V 

Write-Host "Installing Minecraft"
winget install Mojang.MinecraftLauncher

Write-Host "Installing Windows Subsystem for Linux"
# didnt work properly, try on a new install
# check whether this is wsl or wsl2
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

Write-Host "Installing Ubuntu to wsl2"
wsl --install -d Ubuntu
# wsl ubuntu won't show until system restart
# wsl ubuntu says additional virtualization settings need to be configured in bios

Write-Host "Installing MuseScore"
winget install MuseScore.MuseScore

Write-Host "Installing PostgreSQL 13"
winget install "PostgreSQL 17"

Write-Host "Installing Python3"
# asked for reboot
# python3 not found after install
choco install -y python3

Write-Host "Installing Vulkan SDK"
winget install -y KhronosGroup.VulkanSDK

Write-Host "Installing WinRAR"
choco install winrar

Write-Host "Installing Steam Link"
# -y flag not working
winget install -y steamlink 

Write-Host "Installing Logi Tune"
choco install logi-tune

Write-Host "Installing Microsoft SQL Server 2019 LocalDB"
# figure out which one is installed on the desktop pc

Write-Host "Installing Git"
winget install --id Git.Git -e --source winget

Write-Host "Installing GitHub CLI"
# shell needs to restart to update PATH
choco install gh -y


Write-Host "Installing Node.js"
# restart to update PATH for Typescript
choco install nodejs-lts --version=18.18.0 -y
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)
Write-Host "Installing TypeScript"
npm install -g typescript@5.1.6

Write-Host "Installing C++"
choco install visualstudio2022buildtools --package-parameters "--add Microsoft.VisualStudio.Workload.VCTools --quiet --norestart" -y
# or
# choco install mingw --version=13.2.0 -y
# refreshenv
# shell must be closed and reopened to update PATH

Write-Host "Installing Visual Studio Code"
# requires shell restart to update PATH
choco install vscode -y
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)


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

# TODO: make the required programs list the one specified in the README.md. add step to load that list and use it.
# TODO: add step that git clones the gh repo
# TODO: add validation and logs
# TODO: decide if i want to use chocolatey or winget
# TODO: make terminal transparent
# TODO: look at other install repos to get ideas
# TODO: add a validation step that checks if all packages are installed and reports which aren't
# TODO: check versions to see which version and dependencies i should have (ties in to which package manager to use)
# TODO: install background image and configure to use
# TODO: add Hyprland/Awesomewm
# TODO: try installing wsl2 ubuntu first, then installing with apt or something.
# TODO: add log of each install
# TODO: get zsh/oh-my-zsh/powerlevel10k to look how it does on my laptop
# TODO: decide which versions to install

Write-Host "Validating installation of required programs"
# List of required CLI-based programs
$requiredPrograms = @("git", "node", "python3", "code", "microsoft edge", "chromium", "firefox", "firefox-dev", "OBSstudio", "vlc", "discord", "runescape", "autocad", "illustrator", "indesign", "sketchup", "rhino", "msi center", "atem software control", "blackmagic media express", "blackmagic desktop video", "blackmagic disk speed test", "vroid studio", "genshin impact", "hoyoplay", "id mixer", "fl studio 20", "komplete kontrol", "kontakt", "native access", "nvidia nsight systems 2020.3.2", "omniverse", "omniverse code", "Kit", "unreal engine", "steam", "google earth", "musescore 2", "figma", "vite", "mysql workbench", "pgadmin 4", "davinci resolve", "zoom", "vim", "vi", "nvim", "nano", "postman", "pip", "typescript", "c++", ".NET", "davinci resolve project server") 

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
