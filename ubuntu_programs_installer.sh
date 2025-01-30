#!/usr/bin/env zsh

chmod +x ubuntu_programs_installer.sh

echo "Update & upgrade system"
sudo add-apt-repository universe -y
sudo apt update -y && sudo apt upgrade -y

echo "Installing Zsh"
sudo apt install -y zsh


echo "Installing Oh-My-Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# note to self: check my current .zshrc and figure out how to add that to this script
echo "Installing powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

echo "Installing Basic developer tools"
sudo apt install -y gnupg lsb-release software-properties-common apt-transport-https ca-certificates

echo "Installing Python 3 & pip"
sudo apt install -y python3 python3-venv python3-dev
echo "Sourcing .zshrc to update the system PATH..."
source ~/.zshrc
echo "Upgrading pip"
sudo apt install -y python3-pip

echo "Installing Terminator"
sudo apt install -y terminator

echo "Installing Edge Browser"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft-edge.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge.list'
sudo apt update
sudo apt install microsoft-edge-stable -y
echo "Installing Google Chrome"
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
sudo apt install google-chrome-stable -y
echo "Installing Firefox" 
sudo snap install firefox
echo "Installing Firefox Developer"
sudo apt install xz-utils -y && \
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US" -O Firefox-dev.tar.xz && \
tar -xJf Firefox-dev.tar.xz

echo "Installing OBS Studio"
sudo snap install obs-studio

echo "Installing VLC Media Player"
sudo snap install vlc

echo "Installing Discord"
sudo snap install discord

echo "Installing Nautilus"
sudo apt install -y nautilus

echo "Installing Blender"
sudo snap install blender 

echo "Installing gh"
sudo apt install gh -y

echo "Installing gimp"
sudo snap install gimp

echo "Installing pycharm"
sudo snap install pycharm-community --classic

echo "Installing rider"
sudo snap install rider --classic

echo "Installing webstorm"
sudo snap install webstorm --classic

echo "Installing cmake"
sudo apt install -y cmake 

echo "Installing git"
sudo apt install git

echo "Installing Steam"
sudo snap install steam

echo "Installing Lutris"
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo apt install -y lutris

echo "Installing MuseScore"
sudo snap install musescore

echo "Installing LibreOffice"
sudo snap install libreoffice

echo "Installing Figma" 
sudo snap install figma-linux --beta

echo "Installing MySQL Workbench"
sudo apt install -y mysql-server

echo "Installing PGAdmin4"
curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | gpg --dearmor | sudo tee /usr/share/keyrings/pgadmin.gpg > /dev/null
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pgadmin.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/focal pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list'
sudo apt update -y
sudo apt install -y pgadmin4

echo "Installing Remmina"
sudo apt install -y remmina

echo "Installing Wine / Winetricks"
sudo apt install -y wine winetricks

echo "Installing XTerm"
sudo apt install -y xterm

echo "Installing Neovim"
sudo apt install -y neovim

echo "Installing GNOME Tweaks"
sudo apt install -y gnome-tweaks

echo "Installing Postman"
sudo snap install postman

# or do echo "Installing AwesomeWM"
# do hyprland later
#echo "Installing Hyprland"
#sudo apt update && sudo apt install -y \
#    build-essential cmake meson ninja-build pkg-config \
#    libxcb1-dev libxcb-damage0-dev libxcb-composite0-dev \
#    libxcb-ewmh-dev libxcb-xfixes0-dev libxcb-shape0-dev \
#    libxcb-xinput-dev libxkbcommon-dev wayland-protocols \
#    libpixman-1-dev libudev-dev libseat-dev libwayland-dev \
#    libegl-dev libgles2-mesa-dev libxcb-present-dev \
#    libvulkan-dev vulkan-validationlayers \
#    libxcb-render0-dev libxcb-randr0-dev \
#    libxcb-xinerama0-dev libxcb-icccm4-dev \
#    libxcb-keysyms1-dev libxcb-cursor-dev \
#    libxcb-res0-dev libpam0g-dev
#sudo add-apt-repository ppa:umang/wayland-hyprland
#sudo apt update && sudo apt install -y hyprland
#mkdir -p ~/.config/hypr
#cp /usr/share/hyprland/examples/hyprland.conf ~/.config/hypr/hyprland.conf
#echo "exec Hyprland" > ~/.xinitrc
#startx



# rogauracore
# might not want to have, just for laptop
# Might require manual build from GitHub
# sudo apt install -y libusb-1.0-0-dev
# git clone https://github.com/wroberts/rogauracore.git /tmp/rogauracore
# cd /tmp/rogauracore
# make
# sudo make install
# cd -

echo "Installing C++"
sudo apt install g++ -y
sudo apt install build-essential -y
echo "Installing cmake"
sudo apt install cmake -y
echo "Installing make"
sudo apt install make -y
echo "Installing gdb"
sudo apt install gdb -y

echo "Installing Node"
sudo apt install -y nodejs npm
echo "Installing Vite (via npm)"
sudo npm install -g vite
echo "Installing Typescript"
sudo npm install -g typescript

echo "Installing VS Code"
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code 
source ~/.zshrc

echo "Installing VS Code extensions:"
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
code --install-extension eamodio.gitlens # gitLens
code --install-extension oderwat.indent-rainbow # indent-rainbow
code --install-extension ms-python.isort # isort
code --install-extension ms-toolsai.jupyter # Jupyter
code --install-extension ritwickdey.liveserver # Live Server
code --install-extension ms-python.mypy-type-checker # Mypy Type Checker
code --install-extension esbenp.prettier-vscode # Prettier
code --install-extension ms-vscode-remote.remote-ssh # Remote - SSH
code --install-extension wayou.vscode-todo-highlight # TODO Highlight
code --install-extension Gruntfuggly.todo-tree # TODO Tree
code --install-extension vscodevim.vim # Vim
code --install-extension AndenetAlexander.vim-cheatsheet # Vim cheatsheet 
code --install-extension GitHub.github-vscode-theme # GitHub Theme
code --install-extension s-nlf-fh.glassit # GlassIt-VSC


echo "Installing Gnome-Extensions"
#echo "Installing ArcMenu"
#sudo apt update && sudo apt install gnome-shell-extensions gnome-shell-extension-prefs gnome-shell-extension-manager chrome-gnome-shell unzip wget
#gnome-extensions install arcmenu@arcmenu.com
#gnome-extensions enable arcmenu@arcmenu.com

#echo "Installing Blur My Shell"


#echo "Installing Dash-To-Panel"


#echo "Installing Color Picker"


#echo "Installing Emoji Copy"




# or try this
extensions=(
  "arcmenu@arcmenu.com"
  "dash-to-panel@jderose9.github.com"
  "blur-my-shell@aunetx"
  "color-picker@tuberry"
  "emoji-copy@felipeftn"
)

for ext in "${extensions[@]}"; do
  gnome-extensions install "$ext"
  gnome-extensions enable "$ext"
done



# manually install unreal engine, geforce experience, google-earth-pro, zoom, nsight, cuda, cudnn, unity

# TODO: figure out gnome extensions
# TODO: make the required programs list the one specified in the README.md. add step to load that list and use it.
# TODO: make terminator terminal transparent by editing config, manually or gnome-tweaks
# TODO: add a validation step that checks if all packages are installed and reports which aren't
# TODO: check versions to see which version and dependencies i should have (ties in to which package manager to use)
# TODO: install background image and configure to use
# TODO: condense redundant commands
# TODO: check security of all of these repos




./ubuntu_programs_validator.sh