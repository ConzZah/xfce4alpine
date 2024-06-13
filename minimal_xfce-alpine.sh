#!/bin/sh
doas apk add curl && doas curl -s https://raw.githubusercontent.com/ConzZah/install_essentials4alpine/main/install_essentials4alpine.sh | sh
doas setup-xorg-base xfce4 lightdm-gtk-greeter xfce4-terminal adw-gtk3 adwaita-xfce-icon-theme chromium xarchiver mousepad
doas apk add elogind polkit-elogind
doas setup-devd udev
doas rc-update add lightdm
doas rc-update add elogind
doas rc-update add dbus
doas apk add pipewire wireplumber pipewire-pulse pipewire-alsa
doas addgroup $USER audio
doas apk add gvfs udisks2
doas apk add \
    ntfs-3g      \ # Stable, full-featured, read-write NTFS (driver)
    gvfs-cdda    \ # CDDA support for gvfs
    gvfs-afp     \ # AFP support for gvfs
    gvfs-goa     \ # GNOME Online Accounts support for gvfs
    gvfs-mtp     \ # MTP support for gvfs
    gvfs-smb     \ # Windows fileshare support for gvfs
    gvfs-lang    \ # Languages for package gvfs
    gvfs-afc     \ # Apple mobile devices support for gvfs
    gvfs-nfs     \ # NFS support for gvfs
    gvfs-dev     \ # Backends for the gio framework in GLib (development files)
    gvfs-archive \ # Archiving support for gvfs
    gvfs-dav     \ # WebDAV support for gvfs
    gvfs-fuse    \ # FUSE support for gvfs
    gvfs-gphoto2 \ # gphoto2 support for gvfs
    gvfs-avahi   \ # DNS-SD support for gvfs
doas rc-service lightdm start
echo ""; echo "INSTALL DONE" echo ""; echo "[ PRESS ANY KEY TO REBOOT ]"; read -n 1 -s
doas reboot
