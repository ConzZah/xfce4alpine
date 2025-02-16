#!/bin/sh
doas apk add alpine-conf wget lsblk mount nano ntfs-3g 7zip fastfetch curl git openssh sudo man-pages mandoc bash bash-completion bash-doc python3 w3m w3m-image w3m-doc xz shadow
doas apk add flatpak xdg-desktop-portal-gtk; doas apk add dbus dbus-x11 elogind polkit-elogind; doas setup-devd udev; doas rc-update add dbus
doas setup-xorg-base xfce4 lightdm-gtk-greeter xfce4-terminal xfce4-screensaver xfce4-screenshooter adw-gtk3 adwaita-xfce-icon-theme adwaita-icon-theme firefox xarchiver mousepad 
doas apk add pipewire pipewire-tools pipewire-pulse pipewire-alsa pipewire-jack wireplumber xfce4-pulseaudio-plugin pavucontrol && doas addgroup $USER audio
doas apk add gnome-disk-utility e2fsprogs-extra gvfs udisks2 gvfs-cdda gvfs-afp gvfs-goa gvfs-mtp gvfs-smb gvfs-lang gvfs-afc gvfs-nfs gvfs-archive gvfs-dav gvfs-fuse gvfs-gphoto2 gvfs-avahi
doas rc-update add lightdm; doas rc-update add elogind && echo ""; echo ""; echo "[ INSTALL DONE, PLEASE REBOOT!! ]"; echo ""; echo ""; echo "[ PRESS ANY KEY TO EXIT ]"; read -n 1 -s; exit 
