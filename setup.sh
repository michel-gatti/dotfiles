echo 'Installing dependencies'
sudo apt install -y git gnome-tweak-tool fonts-hack-ttf tmux tilix zsh build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common vim-gtk3 curl make direnv

echo 'Installing Theme'
git clone https://github.com/vinceliuice/Orchis-theme.git
~/Orchis-theme/install.sh
sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt update
sudo apt install flat-remix

echo 'Installing asdf'
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1

echo 'Installing docker'
sudo apt -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER

echo 'Creating keys'
ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519 -C "michelxgatti@gmail.com"
ssh-add ~/.ssh/id_ed25519

echo 'Installing copyq'
sudo add-apt-repository ppa:hluk/copyq
sudo apt update
sudo apt install -y copyq

echo 'Installing sublime'
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

echo 'Installing pop-shell'
git clone https://github.com/pop-os/shell

echo 'Installing rubymine'
sudo snap install rubymine --classic

echo 'Installing chrome'
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt install google-chrome-stable

echo 'Installing vscode'
sudo snap install code --classic

echo 'Installing oh-my-zsh theme'
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

echo 'Installing oh-my-zsh'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
