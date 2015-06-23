
apt-get install -y linux-headers-$(uname -r) build-essential perl dkms

VBOX_VERSION=$(cat /home/${PACKERINSTALLUSERNAME}/.vbox_version)
mount -o loop /home/${PACKERINSTALLUSERNAME}/VBoxGuestAdditions_${VBOX_VERSION}.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm /home/${PACKERINSTALLUSERNAME}/VBoxGuestAdditions_${VBOX_VERSION}.iso
rm /home/${PACKERINSTALLUSERNAME}/.vbox_version

if [ "${VBOX_VERSION}" = "4.3.10" ]; then
	ln -s /opt/VBoxGuestAdditions-4.3.10/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
fi


