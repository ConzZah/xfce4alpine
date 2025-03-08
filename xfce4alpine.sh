#!/bin/sh

# get the basics
doas apk upgrade -U
doas apk add alpine-conf wget lsblk mount nano ntfs-3g 7zip fastfetch curl grep sed git openssh sudo man-pages mandoc bash bash-completion bash-doc python3 w3m w3m-image w3m-doc xz shadow
doas apk add flatpak xdg-desktop-portal-gtk

# setup dbus, udev and xorg:
doas apk add dbus dbus-x11
doas rc-update add dbus
doas setup-devd udev
doas setup-xorg-base xfce4 lightdm-gtk-greeter xfce4-terminal xfce4-screensaver xfce4-screenshooter xfce-polkit elogind polkit-elogind adw-gtk3 adwaita-xfce-icon-theme adwaita-icon-theme firefox xarchiver mousepad 

# add audio support and install additional packages:
doas apk add pipewire pipewire-tools pipewire-pulse pipewire-alsa pipewire-jack wireplumber xfce4-pulseaudio-plugin pavucontrol; doas addgroup $USER audio; doas addgroup $USER video
doas apk add gnome-disk-utility e2fsprogs-extra gvfs udisks2 gvfs-cdda gvfs-afp gvfs-goa gvfs-mtp gvfs-smb gvfs-lang gvfs-afc gvfs-nfs gvfs-archive gvfs-dav gvfs-fuse gvfs-gphoto2 gvfs-avahi

# add avahi to allow for local network browsing with thunar:
doas apk add avahi avahi-tools
doas rc-update add avahi-daemon
doas rc-service avahi-daemon start

# add fonts:
doas apk add fontconfig font-terminus font-inconsolata font-dejavu font-noto font-noto-cjk font-awesome font-noto-extra

# add boot services:
doas rc-update add elogind
doas rc-update add lightdm
doas rc-update add fuse

echo -e "\n[ INSTALL DONE, PLEASE REBOOT!! ]\n\n[ PRESS ANY KEY TO EXIT ]\n"; read -n 1 -s; exit 
