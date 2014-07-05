sudo apt-get install -qq build-essential pkg-config
env SUDO=sudo ./install.sh
env PKG_CONFIG_PATH=/usr/local pkg-config --list-all
