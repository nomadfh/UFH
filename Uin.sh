#bin/bash
# Install .deb programs using APT
sudo apt install -y vim font-manager gnome-shell-extension-manager vlc wine font-manager lutris steam gnome-shell-extensions vim neofetch htop synaptic cmatrix libnss3-tools discord gnome-tweaks neofetch timeshift pcsc-tools libccid libpcsc-perl libpcsclite1 pcscd opensc opensc-pkcs11 vsmartcard-vpcd libnss3-tools &&
# Enable tap to click in Gnome display manager
xhost SI:localuser:gdm
sudo -u gdm gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
# Copy user display settings to gnome display manager
sudo cp ~/.config/monitors.xml ~gdm/.config/ &&
# Install Snap packages
snap install standard-notes gnome-extension-manager spotify qbittorrent-arnatious onlyoffice-desktopeditors gnome-boxes discord &&
# InarLL Flatpak packages
flatpak install net.davidotek.pupgui2
# Update and Upgrade before reboot
sudo apt update && sudo apt upgrade
# restart PC following updates
sudo shutdown -r now
