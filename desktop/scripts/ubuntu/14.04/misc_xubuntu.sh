
# autologin
echo "[SeatDefaults]
autologin-user=${PACKERINSTALLUSERNAME}" > /etc/lightdm/lightdm.conf.d/12-autologin.conf

# solve keyboard problem
sudo apt-get purge -y ibus
mkdir -p /home/${PACKERINSTALLUSERNAME}/.config/autostart
echo "[Desktop Entry]
Encoding=UTF-8
Version=0.9.4
Type=Application
Name=resolve_kb_bug
Comment=
Exec=setxkbmap de
OnlyShowIn=XFCE;
StartupNotify=false
Terminal=false
Hidden=false" > /home/${PACKERINSTALLUSERNAME}/.config/autostart/resolve_kb_bug.desktop
chown ${PACKERINSTALLUSERNAME}:${PACKERINSTALLUSERNAME} /home/${PACKERINSTALLUSERNAME}/.config/autostart/resolve_kb_bug.desktop

# remove screensaver
sudo apt-get purge -y light-locker xscreensaver
