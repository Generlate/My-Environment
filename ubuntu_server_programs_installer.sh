#!/usr/bin/bash

chmod +x ubuntu_server_programs_installer.sh
chmod +x ubuntu_server_programs_validator.sh

echo "Update & upgrade system"
sudo add-apt-repository universe -y
sudo apt update -y && sudo apt upgrade -y

echo "Installing Basic developer tools"
sudo apt install -y gnupg lsb-release software-properties-common apt-transport-https ca-certificates

echo "Installing Terminator"
sudo apt install -y terminator

echo "Installing Nautilus"
sudo apt install -y nautilus

echo "Installing Git"
sudo apt install -y git

echo "Installing gh"
sudo apt install gh -y

echo "Installing Python 3 & pip"
sudo apt install -y python3 python3-venv python3-dev
echo "Upgrading pip"
sudo apt install -y python3-pip

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

echo "Installing cmake"
sudo apt install -y cmake 

echo "Installing MySQL Workbench"
sudo apt install -y mysql-server

echo "Installing PGAdmin4"
curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | gpg --dearmor | sudo tee /usr/share/keyrings/pgadmin.gpg > /dev/null
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pgadmin.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/focal pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list'
sudo apt update -y
sudo apt install -y pgadmin4

echo "Installing Docker"
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

echo "Installing Docker Compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Installing Wine / Winetricks"
sudo apt install -y wine winetricks

echo "Installing Neovim"
sudo apt install -y neovim

echo "Installing GNOME Tweaks"
sudo apt install -y gnome-tweaks

echo "Installing Postman"
sudo snap install postman

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

echo "Installing gnu"
echo "Installing VIM"
sudo apt install vim
echo "Installing nsight"
sudo apt install nsight-compute?
echo "Installing cuda"
sudo apt install nvidia-cuda-toolkit
echo "Installing cuDNN"
sudo apt install nvidia-cudnn
echo "Installing tensorRT"
echo "Installing nvidia app"
echo "Installing nextcloud"
sudo apt install nextcloud-desktop
echo "Installing Django"
echo "Installing Next.js"
echo "Installing React"
echo "Installing Proxmox"
echo "Installing qemu | vmware esxi"
echo "Installing jenkins"
echo "Installing perforce helix cloud | p4v"
echo "Installing llama"
echo "Installing pytorch"
echo "Installing gunicorn"
sudo apt install gunicorn
echo "Installing cloudflare"
sudo apt install cloudlfare-ddns

echo "Installing VS Code"
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 643 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd63,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo snap install code 
source ~/.zshrc

echo "Installing VS Code extensions:"
# with setting sync, extensions get installed automatically
vscode_extensions=(
    formulahendry.auto-rename-tag # Auto Rename Tag
    ms-python.black-formatter # Black Formatter
    ms-azuretools.vscode-azureappservice # Azure App Service
    msazurermtools.azurerm-vscode-tools # Azure Resources (ARM Tools)
    ms-vscode.cpptools # C/C++ Intellisense
    streetsidesoftware.code-spell-checker # Code Spell Checker
    dbaeumer.vscode-eslint # ESLint
    tamasfe.even-better-toml # Even Better TOML
    ms-python.flake7 # Flake8
    GitHub.vscode-github-actions # Github Actions
    GitHub.copilot # GitHub Copilot
    eamodio.gitlens # gitLens
    oderwat.indent-rainbow # indent-rainbow
    ms-python.isort # isort
    ms-toolsai.jupyter # Jupyter
    ritwickdey.liveserver # Live Server
    ms-python.mypy-type-checker # Mypy Type Checker
    esbenp.prettier-vscode # Prettier
    ms-vscode-remote.remote-ssh # Remote - SSH
    wayou.vscode-todo-highlight # TODO Highlight
    Gruntfuggly.todo-tree # TODO Tree
    vscodevim.vim # Vim
    AndenetAlexander.vim-cheatsheet # Vim cheatsheet 
    GitHub.github-vscode-theme # GitHub Theme
    s-nlf-fh.glassit # GlassIt-VSC
)

for extension in "${vscode_extensions[@]}"; do
    code --install-extension "$extension"
done

echo "Installing Nginx"
sudo apt install -y nginx

echo "Installing Certbot"
sudo apt install -y certbot python3-certbot-nginx

echo "Installing Redis"
sudo apt install -y redis-server

echo "Installing MongoDB"
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt update
sudo apt install -y mongodb-org

echo "Installing Supervisor"
sudo apt install -y supervisor

echo "Installing Fail2ban"
sudo apt install -y fail2ban

echo "Installing UFW"
sudo apt install -y ufw
sudo ufw allow OpenSSH
sudo ufw enable

# manually install unreal engine, 


Write-Host "Setting Wallpaper"
gsettings set org.gnome.desktop.background picture-uri "file://$HOME/My-Environment/background.jpg"

# Modify GNOME Terminal settings for transparency
echo "Turning GNOME Terminal window transparent"

# Get the current profile ID
profile=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d "'")

# Define the desired transparency settings
desiredOpacity=0.75

# Set the transparency settings
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/Terminal/Legacy/Profiles:/:$profile/" use-transparent-background true
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/Terminal/Legacy/Profiles:/:$profile/" background-transparency-percent $((100 - $desiredOpacity * 100))

echo "GNOME Terminal window modification completed. Please restart GNOME Terminal to apply the changes."


echo "Installing Zsh"
sudo apt install -y zsh

echo "Installing Oh-My-Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# note to self: check my current .zshrc and figure out how to add that to this script
echo "Installing powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k
# changes shell to zsh
chsh -s /usr/bin/zsh

# Validate programs after installation
./ubuntu_server_programs_validator.sh
