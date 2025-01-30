# configures powershell to allow script execution
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

Write-Host "Installing Chocolatey"
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Write-Host "Upgrading choco and default packages"
choco upgrade chocolatey -y
choco feature enable -n=allowGlobalConfirmation

Write-Host "Installing Blender"
# blender wasn't properly installed. try adding path in a new install
choco install blender -y
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\MuseScore 4\bin"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


Write-Host "Installing Visual Studio 2022 Community"
choco install visualstudio2022community --package-parameters `
"--add Microsoft.VisualStudio.Workload.CoreEditor `
--add Microsoft.VisualStudio.Workload.Node `
--add Microsoft.VisualStudio.Workload.Python `
--add Microsoft.VisualStudio.Workload.NativeDesktop `
--includeRecommended" -y
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


# manually install the Nvidia App

Write-Host "Installing GeForce Experience"
winget install Nvidia.GeForceNow
# couldn't figure out how to call this cmdlet from this path
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + "C:\Users\austencabret\AppData\Local\NVIDIA Corporation\GeForceNOW\CEF";
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


Write-Host "Installing chrome"
choco install googlechrome
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\AppData\Local\Programs\omniverse-launcher"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")

Write-Host "Installing firefox"
winget install Mozilla.Firefox
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\AppData\Local\Programs\omniverse-launcher"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")

Write-Host "Installing firefox-dev"
winget install Mozilla.Firefox.DeveloperEdition

$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\AppData\Local\Programs\omniverse-launcher"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")

Write-Host "Installing obs studio"
choco install obs-studio
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\AppData\Local\Programs\omniverse-launcher"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")

Write-Host "Installing vlc"
winget install VidoLAN.VLC
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\AppData\Local\Programs\omniverse-launcher"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")

Write-Host "Installing runescape"
winget install Jagex.Runescape
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\AppData\Local\Programs\omniverse-launcher"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


Write-Host "Installing Omniverse"
winget install Nvidia.Omniverse 
# couldn't figure out how to call this cmdlet from this path
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\AppData\Local\Programs\omniverse-launcher"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing omniverse code"

Write-Host "Installing CUDA"
# couldn't find execution file
winget install Nvidia.CUDA
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\MuseScore 4\bin"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


Write-Host "Installing WizTree"
choco install wiztree -y
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
# check whether this is wsl or wsl2
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




# manually install atem software control, blackmagic media express, blackmagic desktop video, blackmagic disk speed test, hoyoplay, id mixer, fl studio 20, komplete kontrol, kontakt, native access, Kit, davinci  resolve, runescape, davinci resolve project server


Write-Host "Installing vroid studio"
winget install "VRoid Studio"
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Users\austencabret\AppData\Local\Programs\VRoidStudio\1.27.0"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing unreal engine"
winget install EpicGames.EpicGamesLauncher
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing steam"
choco install steam
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
# couldn't find execution file
npm install vite
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\MuseScore 4\bin"
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
# couldn't find execution file
winget install "PostgreSQL 17"
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\MuseScore 4\bin"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


Write-Host "Installing Python3"
choco install -y python3; $env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)

Write-Host "Installing Vulkan SDK"
winget install KhronosGroup.VulkanSDK -y
# this path has cmdlets that are hard to use
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vulkan SDK 1.3.296.0"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



Write-Host "Installing WinRAR"
choco install winrar
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\WinRAR"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


Write-Host "Installing Steam Link"
# couldn't find execution file
winget install steamlink 
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\MuseScore 4\bin"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")


Write-Host "Installing Logi Tune"
choco install logi-tune
$newPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";C:\Program Files\Logitech\LogiTune"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")



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

# TODO: add programs to PATH
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
# TODO: check security of all of these repos

.\windows_validator.ps1