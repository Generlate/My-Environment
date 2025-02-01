# configures powershell to allow script execution
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

Write-Host "Installing Chocolatey"
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Write-Host "Upgrading choco and default packages"
choco upgrade chocolatey -y
choco feature enable -n=allowGlobalConfirmation

Write-Host "Installing Blender"
winget install BlenderFoundation.Blender
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\Blender Foundation\Blender 4.3"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


Write-Host "Installing Visual Studio 2022 Community"
winget install Microsoft.VisualStudio.2022.Community
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


# manually install the Nvidia App

Write-Host "Installing GeForce Experience"
winget install Nvidia.GeForceNow
# couldn't figure out how to call this cmdlet from this path
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + "C:\Users\austencabret\AppData\Local\NVIDIA Corporation\GeForceNOW\CEF";
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


Write-Host "Installing chrome"
winget install Google.Chrome
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\Google\Chrome\Application"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")

Write-Host "Installing firefox"
winget install Mozilla.Firefox
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\Mozilla Firefox"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")

Write-Host "Installing firefox-dev"
winget install Mozilla.Firefox.DeveloperEdition

$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\Firefox Developer Edition"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")

Write-Host "Installing obs studio"
winget install OBSProject.OBSStudio
choco install obs-studio
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\obs-studio\bin\64bit"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")

Write-Host "Installing vlc"
winget install VideoLAN.VLC
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\VideoLAN\VLC"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")

Write-Host "Installing runescape"
# failed to install
winget install Jagex.Runescape
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\AppData\Local\Programs\omniverse-launcher"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


Write-Host "Installing Omniverse"
winget install Nvidia.Omniverse 
# couldn't figure out how to call this cmdlet from this path
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\AppData\Local\Programs\omniverse-launcher"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing CUDA"
winget install Nvidia.CUDA




Write-Host "Installing WizTree"
winget install WizTree
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\WizTree"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing P4V (Perforce Visual Client)"
winget install Perforce.P4V 
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\Perforce"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing Minecraft"
winget install Mojang.MinecraftLauncher
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files (x86)\Minecraft Launcher"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



# Write-Host "Installing Windows Subsystem for Linux"
# didnt work properly, try on a new install
# dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Write-Host "Installing Ubuntu to wsl2"
# wsl --install -d Ubuntu
# wsl ubuntu won't show until system restart
# wsl ubuntu says additional virtualization settings need to be configured in bios

Write-Host "Installing MuseScore"
winget install MuseScore.MuseScore
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\MuseScore 4\bin"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")







Write-Host "Installing msi center"
# couldn't find execution file
winget install "msi center" --accept-package-agreements --accept-source-agreements
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\MuseScore 4\bin"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")




# manually install atem software control, blackmagic media express, blackmagic desktop video, blackmagic disk speed test, hoyoplay, id mixer, fl studio 20, komplete kontrol, kontakt, native access, Kit, davinci  resolve, runescape, davinci resolve project server, Zbrush, houdini, nuke, blackmagic fusion, 


Write-Host "Installing vroid studio"
winget install "VRoid Studio"
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\AppData\Local\Programs\VRoidStudio\1.27.0"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing unreal engine"
winget install EpicGames.EpicGamesLauncher
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing steam"
winget install Valve.Steam
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files (x86)\Steam"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing discord"
winget install Discord.Discord
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\AppData\Local\Discord\app-1.0.9180"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")




Write-Host "Installing google earth"
winget install Google.EarthPro
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\Google\Google Earth Pro\client"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")




Write-Host "Installing figma"
winget install figma
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\AppData\Local\Figma\app-124.7.4"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing vite"
npm install vite
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\node_modules\vite\bin"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


Write-Host "Installing mysql workbench"
winget install Oracle.MySQL
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\ProgramData\Microsoft\Windows\Start Menu\Programs\MySQL\MySQL Installer - Community"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")




Write-Host "Installing zoom"
winget install Zoom.Zoom
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\Zoom\bin"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing vim"
winget install vim.vim
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\Vim\vim91"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")

# add msedge to PATH
# check this works.
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + "C:\Program Files (x86)\Microsoft\Edge\Application";
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


Write-Host "Installing nvim"
winget install Neovim.Neovim

Write-Host "Installing postman"
winget install Postman.Postman
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\AppData\Local\Postman"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing .NET"
# couldn't find execution file
winget install --id Microsoft.DotNet.SDK.8
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\MuseScore 4\bin"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing PostgreSQL 13"
winget install "PostgreSQL 17"
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\PostgreSQL\17\pgAdmin 4\runtime"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


Write-Host "Installing Python3"
choco install -y python3; $env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)

Write-Host "Installing Vulkan SDK"
winget install KhronosGroup.VulkanSDK -y
# this path has cmdlets that are hard to use
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vulkan SDK 1.3.296.0"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing WinRAR"
winget install WinRAR
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\WinRAR"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


Write-Host "Installing Steam Link"
# couldn't find execution file
winget install steamlink 
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Steam Link"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


Write-Host "Installing Logi Tune"
winget install Logitech.LogiTune
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\Logitech\LogiTune"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing Microsoft SQL Server 2019 LocalDB"
# figure out which one is installed on the desktop pc

Write-Host "Installing Git"
winget install --id Git.Git -e --source winget



Write-Host "Installing GitHub CLI"
winget install GitHub.cli ; $env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)


Write-Host "Installing Node.js"
winget install OpenJS.NodeJS ; $env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine) 
Write-Host "Installing TypeScript"; npm install -g typescript@5.1.6

Write-Host "Installing C++"
winget install Microsoft.VisualStudio.2022.BuildTools --package-parameters "--add Microsoft.VisualStudio.Workload.VCTools --quiet --norestart" 
# or
# choco install mingw --version=13.2.0 -y
# $env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)



Write-Host "Installing Visual Studio Code"
winget install Microsoft.VisualStudioCode ; $env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)


Write-Host "Installing Visual Studio Code Extensions"
# setting sync might auto install extensions
$vscodeExtensions = @(
    "formulahendry.auto-rename-tag", # Auto Rename Tag
    "ms-python.black-formatter", # Black Formatter
    "ms-azuretools.vscode-azureappservice", # Azure App Service
    "msazurermtools.azurerm-vscode-tools", # Azure Resources (ARM Tools)
    "ms-vscode.cpptools", # C/C++ Intellisense
    "streetsidesoftware.code-spell-checker", # Code Spell Checker
    "dbaeumer.vscode-eslint", # ESLint
    "tamasfe.even-better-toml", # Even Better TOML
    "ms-python.flake8", # Flake8
    "GitHub.vscode-github-actions", # Github Actions
    "GitHub.copilot", # GitHub Copilot
    "GitHub.copilot-chat", # GitHub Copilot Chat
    "eamodio.gitlens", # gitLens
    "oderwat.indent-rainbow", # indent-rainbow
    "ms-python.isort", # isort
    "ms-toolsai.jupyter", # Jupyter
    "ritwickdey.liveserver", # Live Server
    "ms-python.mypy-type-checker", # Mypy Type Checker
    "esbenp.prettier-vscode", # Prettier
    "ms-python.vscode-pylance", # Pylance
    "ms-python.python", # Python
    "ms-python.debugger", # Python Debugger
    "ms-vscode-remote.remote-ssh", # Remote - SSH
    "wayou.vscode-todo-highlight", # TODO Highlight
    "Gruntfuggly.todo-tree", # TODO Tree
    "vscodevim.vim", # Vim
    "shakram02.vim-cheatsheet", # Vim cheatsheet
    "GitHub.github-vscode-theme", # GitHub Theme
    "gabrielgrinberg.glassit" # GlassIt-VSC
)

foreach ($extension in $vscodeExtensions) {
    code --install-extension $extension
}

Write-Host "Manually Install: autocad, illustrator, photoshop, indesign, sketchup, rhino"

Write-Host "Turning Powershell Window transparent"
# Define the path to the Windows Terminal settings JSON file
$settingsPath = "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"

# Read the current settings
$settings = Get-Content -Path $settingsPath -Raw | ConvertFrom-Json

# Define the desired transparency settings
$desiredOpacity = 0.75
$useAcrylic = $true

# Find the PowerShell profile and update its settings
foreach ($profile in $settings.profiles.list) {
    if ($profile.name -eq "Windows PowerShell" -or $profile.name -eq "PowerShell") {
        $profile.acrylicOpacity = $desiredOpacity
        $profile.useAcrylic = $useAcrylic
    }
}

# Convert the settings back to JSON and save the file
$settings | ConvertTo-Json -Depth 32 | Set-Content -Path $settingsPath

Write-Host "PowerShell window modification completed. Please restart Windows Terminal to apply the changes."



Write-Host "Setting Wallpaper"






# Define the path to the .jpg file
$backgroundImagePath = ".\background.jpg"

# Ensure the file exists
if (-Not (Test-Path $backgroundImagePath)) {
    Write-Host "The specified background image does not exist: $backgroundImagePath" -ForegroundColor Red
    exit 1
}

# Function to set the desktop background
function Set-DesktopBackground {
    param (
        [string]$imagePath
    )

    Add-Type @"
    using System;
    using System.Runtime.InteropServices;
    public class Wallpaper {
        [DllImport("user32.dll", CharSet = CharSet.Auto)]
        public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
    }
"@

    $SPI_SETDESKWALLPAPER = 0x0014
    $SPIF_UPDATEINIFILE = 0x01
    $SPIF_SENDCHANGE = 0x02

    [Wallpaper]::SystemParametersInfo($SPI_SETDESKWALLPAPER, 0, $imagePath, $SPIF_UPDATEINIFILE -bor $SPIF_SENDCHANGE)
}

# Set the desktop background
Set-DesktopBackground -imagePath $backgroundImagePath

Write-Host "Desktop background has been set to: $backgroundImagePath" -ForegroundColor Green

# Modify Windows Terminal settings for transparency
Write-Host "Turning Powershell Window transparent"
# Define the path to the Windows Terminal settings JSON file
$settingsPath = "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"

# Read the current settings
$settings = Get-Content -Path $settingsPath -Raw | ConvertFrom-Json

# Define the desired transparency settings
$desiredOpacity = 0.75
$useAcrylic = $true

# Find the PowerShell profile and update its settings
foreach ($profile in $settings.profiles.list) {
    if ($profile.name -eq "Windows PowerShell" -or $profile.name -eq "PowerShell") {
        $profile.acrylicOpacity = $desiredOpacity
        $profile.useAcrylic = $useAcrylic
    }
}

# Convert the settings back to JSON and save the file
$settings | ConvertTo-Json -Depth 32 | Set-Content -Path $settingsPath

Write-Host "PowerShell window modification completed. Please restart Windows Terminal to apply the changes."

# TODO: add programs to PATH
# TODO: add validation and logs
# TODO: make terminal transparent

# TODO: add programs to PATH
# TODO: add validation and logs
# TODO: make terminal transparent
# TODO: look at other install repos to get ideas
# TODO: check versions to see which version and dependencies i should have (ties in to which package manager to use)
# TODO: install background image and configure to use
# TODO: try installing wsl2 ubuntu first, then installing with apt or something.
# TODO: decide which versions to install
# TODO: check security of all of these repos

.\windows_validator.ps1