#!/bin/sh
doas apk add curl && doas curl -s https://raw.githubusercontent.com/ConzZah/install_essentials4alpine/main/install_essentials4alpine.sh | sh
doas setup-xorg-base xfce4 lightdm-gtk-greeter xfce4-terminal adw-gtk3 adwaita-xfce-icon-theme firefox xarchiver mousepad
doas apk add elogind polkit-elogind
doas setup-devd udev
doas rc-update add dbus
doas apk add pipewire wireplumber pipewire-pulse pipewire-alsa
doas addgroup $USER audio
doas apk add gvfs udisks2 ntfs-3g gvfs-dev gvfs-archive gvfs-dav gvfs-fuse gvfs-gphoto2 gvfs-avahi gvfs-smb 
doas rc-update add lightdm
doas rc-update add elogind
doas rc-service lightdm start
echo ""; echo "INSTALL DONE" echo ""; echo "[ PRESS ANY KEY TO REBOOT ]"; read -n 1 -s
doas reboot
