#bin/bash
# Install .deb programs using APT
sudo apt install -y vim gnome-shell-extension-manager vlc wine font-manager lutris steam gnome-shell-extensions vim neofetch htop synaptic cmatrix libnss3-tools discord gnome-tweaks neofetch timeshift pcsc-tools libccid libpcsc-perl libpcsclite1 pcscd opensc opensc-pkcs11 vsmartcard-vpcd libnss3-tools &&
# Install programs from Flathub
flatpak install -y org.standardnotes.standardnotes org.gnome.FontManager com.mattjakeman.ExtensionManager net.davidotek.pupgui2 com.spotify.Client org.qbittorrent.qBittorrent org.onlyoffice.desktopeditors org.yuzu_emu.yuzu org.gnome.Boxes &&
# Enable tap to click in Gnome display manager
xhost SI:localuser:gdm
sudo -u gdm gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
# Copy user display settings to gnome display manager
sudo cp ~/.config/monitors.xml ~gdm/.config/ &&
# Download and Install Virtualbox deb
# Update and Upgrade before reboot
sudo apt update && sudo apt upgrade
# restart PC following updates
sudo shutdown -r now
