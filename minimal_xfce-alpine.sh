#!/bin/sh
doas apk add wget && wget https://raw.githubusercontent.com/ConzZah/install_essentials4alpine/main/install_essentials4alpine.sh
doas chmod +x install_essentials4alpine.sh; ./install_essentials4alpine.sh
doas setup-xorg-base xfce4 lightdm-gtk-greeter xfce4-terminal adw-gtk3 adwaita-xfce-icon-theme adwaita-icon-theme firefox xarchiver mousepad 
doas apk add dbus dbus-x11 elogind polkit-elogind
doas setup-devd udev
doas rc-update add dbus
doas apk add pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber xfce4-pulseaudio-plugin pavucontrol 
doas addgroup $USER audio
doas apk add gvfs udisks2 ntfs-3g gvfs-cdda gvfs-afp gvfs-goa gvfs-mtp gvfs-smb gvfs-lang gvfs-afc gvfs-nfs gvfs-dev gvfs-archive gvfs-dav gvfs-fuse gvfs-gphoto2 gvfs-avahi
doas rc-update add lightdm
doas rc-update add elogind
doas rc-service lightdm start
echo ""; echo "INSTALL DONE"; echo ""; echo "[ PRESS ANY KEY TO REBOOT ]"; read -n 1 -s
doas reboot
