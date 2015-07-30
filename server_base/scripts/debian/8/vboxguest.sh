apt-get install -y linux-headers-$(uname -r) build-essential perl dkms

#tmp solution to avoid debian bug #754411
modprobe loop

VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
mount -o loop /home/vagrant/VBoxGuestAdditions_${VBOX_VERSION}.iso /mnt
sh /mnt/VBoxLinuxAdditions.run --nox11
umount /mnt
rm /home/vagrant/VBoxGuestAdditions_${VBOX_VERSION}.iso
rm /home/vagrant/.vbox_version

if [ "${VBOX_VERSION}" = "4.3.10" ]; then
	ln -s /opt/VBoxGuestAdditions-4.3.10/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
fi
