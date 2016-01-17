dnf -y install dnf-plugins-core
dnf -y copr enable dperson/neovim

su -c 'dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'

cat << EOF > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF

sudo tee /etc/yum.repos.d/docker.repo <<-'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/fedora/$releasever/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

curl -sSL https://s3.amazonaws.com/download.fpcomplete.com/fedora/23/fpco.repo | sudo tee /etc/yum.repos.d/fpco.repo

dnf -y install zsh yp-tools xsel neovim google-chrome stack mplayer dialog gmrun docker-engine

systemctl start docker
systemctl enable docker
usermod -aG docker $OUR_USER
