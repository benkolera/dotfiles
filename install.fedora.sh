dnf -y install dnf-plugins-core
dnf -y copr enable dperson/neovim

cat << EOF > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF

curl -sSL https://s3.amazonaws.com/download.fpcomplete.com/fedora/23/fpco.repo | sudo tee /etc/yum.repos.d/fpco.repo

dnf -y install zsh yp-tools xsel neovim google-chrome stack
