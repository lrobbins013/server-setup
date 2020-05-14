#!/bin/bash

# Please be sure to run with sudoer access


# Add repository for HandBrakeCLI
add-apt-repository ppa:stebbins/handbrake-releases

apt-get update
apt-get upgrade -y

apt-get install kubuntu-desktop handbrake-cli emacs-nox samba -y

wget -P ~/realvnc/ https://www.realvnc.com/download/file/vnc.files/VNC-Server-6.7.1-Linux-x64.deb
dpkg -i ~/realvnc/VNC-Server-6.7.1-Linux-x64.deb
systemctl enable vncserver-virtuald.service

wget -P ~/plex/ https://downloads.plex.tv/plex-media-server-new/1.19.3.2764-ef515a800/debian/plexmediaserver_1.19.3.2764-ef515a800_amd64.deb
dpkg -i ~/plex/plexmediaserver_1.19.3.2764-ef515a800_amd64.deb
systemctl enable plexmediaserver.service

sudo reboot