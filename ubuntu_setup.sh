#!/usr/bin/env zsh
chmod +x ubuntu_setup.sh
# run with: ./ubuntu_setup.sh

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
# add "yes" flag to this

echo "Installing Basic developer tools"
sudo apt install -y gnupg lsb-release software-properties-common apt-transport-https ca-certificates

echo "Installing Python 3 & pip"
# Shell needs restart to update PATH
sudo apt install -y python3 python3-venv python3-dev
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
# this errored: unable to locate package google-chrome-stable. check on this
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


echo "Installing unreal engine"

echo "Installing gh"

echo "Installing nsight"

echo "Installing cuda"

echo "Installing cudnn"

echo "Installing gimp"

echo "Installing geforce experience"

echo "Installing pycharm"

echo "Installing rider"

echo "Installing webstorm"

echo "Installing cmake"

echo "Installing git"


echo "Installing Steam"
sudo snap install steam

echo "Installing Lutris"
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo apt install -y lutris

echo "Installing Google Earth"
# didnt work
wget https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb
sudo dpkg -i google-earth-pro-stable_current_amd64.deb

echo "Installing MuseScore 2"
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

echo "Installing Zoom"
# failed
wget https://zoom.us/client/latest/zoom_amd64.deb -O /tmp/zoom.deb
sudo dpkg -i /tmp/zoom.deb || sudo apt -f install -y

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

# rogauracore
# might not want to have, just for laptop
# Might require manual build from GitHub
# sudo apt install -y libusb-1.0-0-dev
# git clone https://github.com/wroberts/rogauracore.git /tmp/rogauracore
# cd /tmp/rogauracore
# make
# sudo make install
# cd -

echo "Installing Unity Editor"
# didn't work because no sandbox
# wget https://public-cdn.cloud.unity3d.com/hub/prod/UnityHub.AppImage -O $HOME/UnityHub.AppImage
# chmod +x $HOME/UnityHub.AppImage
# echo "Unity Hub downloaded. Run ~/UnityHub.AppImage to install the Unity editor."

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
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install -y code
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



# TODO: make the required programs list the one specified in the README.md. add step to load that list and use it.
# TODO: add step that git clones the gh repo
# TODO: make terminal transparent
# TODO: add a validation step that checks if all packages are installed and reports which aren't
# TODO: check versions to see which version and dependencies i should have (ties in to which package manager to use)
# TODO: install background image and configure to use
# TODO: add Hyprland/Awesomewm
# TODO: condense redundant commands
# TODO: add log of each install




echo "Validating whether the programs were installed properly"
required_programs=(
  git node python3 code terminator zsh Oh-My-Zsh "edge browser" 
  chromium firefox firefox-dev
  obs-studio vlc discord
  "runescape-launcher" nautilus blender htop unity omniverse "omniverse code" "unreal engine" steam lutris gnu "google earth" "musescore 2" libreoffice figma "mysql workbench" pgadmin4 "davinci resolve" zoom remmina wine winetricks xterm vim vi nvim nano gnome-tweaks postman pip "vscode extensions" gh typescript c++ g++ 
  "blackmagic-mediaexpress"
  "blackmagic-desktop-video" "blackmagic-diskspeed-test"
  nsight CUDA cuDNN tensorRT gimp "nvidia app?" "geforce experience" pycharm rider webstorm "Gnome Extensions (Dash-to-Panel, ArcMenu, Blur my Shell, Color Picker, Emoji Copy)" 
)

# Function to check if a program is installed
check_command() {
  if command -v "$1" &>/dev/null; then
    installed_programs+=("$1")
  else
    missing_programs+=("$1")
  fi
}

# Arrays to store installed and missing programs
installed_programs=()
missing_programs=()

# Check CLI-based programs
echo -e "\nChecking installed programs..."
for program in "${required_programs[@]}"; do
  check_command "$program"
done

# Output results for installed programs
echo -e "\n\033[1;32m=== Installed Programs ===\033[0m"
if [ ${#installed_programs[@]} -gt 0 ]; then
  for installed in "${installed_programs[@]}"; do
    echo -e "\033[32m✔ $installed\033[0m"
  done
else
  echo -e "\033[33mNo installed programs found.\033[0m"
fi

# Output results for missing programs
echo -e "\n\033[1;31m=== Missing Programs ===\033[0m"
if [ ${#missing_programs[@]} -gt 0 ]; then
  for missing in "${missing_programs[@]}"; do
    echo -e "\033[31m✘ $missing\033[0m"
  done
  echo -e "\n\033[31mSome programs are missing. Please install them.\033[0m"
  return 1  # Use return instead of exit to prevent session disconnection
else
  echo -e "\n\033[32mAll required programs are installed successfully!\033[0m"
  return 0  # Use return instead of exit to prevent session disconnection
fi

