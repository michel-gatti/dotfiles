sudo add-apt-repository -y ppa:apt-fast/stable
sudo apt-get update
sudo apt-get -y -q install apt-fast shellcheck hunspell

sudo apt-fast -y install gnome-tweak-tool fonts-hack-ttf tmux tilix zsh build-essential libreadline-dev libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common vim-gtk3 curl make direnv postgresql-client zlib1g-dev autoconf bison libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev unzip g++ gcc automake libc6-dev libffi-dev libgdbm-dev libncurses5-dev libtool pkg-config zlib1g-dev libgmp-dev libreadline-dev gnupg2 libpq-dev cmake apt-transport-https ca-certificates software-properties-common python-dev libffi-dev

snap install chezmoi --classic
sudo apt-fast -y install gnome-shell-extensions

git clone https://github.com/vinceliuice/Orchis-theme.git
~/Orchis-theme/install.sh
sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt-fast update
sudo apt-fast -y install flat-remix

sudo add-apt-repository ppa:regolith-linux/release
sudo apt-fast -y install regolith-desktop-standard regolith-look-solarized-dark

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1

sudo apt-fast -y install \
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
sudo apt-fast update
sudo apt-fast install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker "$USER"

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519 -C "michelxgatti@gmail.com"
ssh-add ~/.ssh/id_ed25519

sudo add-apt-repository ppa:hluk/copyq
sudo apt-fast update
sudo apt-fast install -y copyq

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-fast update
sudo apt-fast install sublime-text

sudo snap install rubymine --classic

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-fast update
sudo apt-fast install google-chrome-stable

sudo snap install code --classic

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
