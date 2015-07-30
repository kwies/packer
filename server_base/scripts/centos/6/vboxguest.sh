yum install -y kernel-headers-$(uname -r) kernel-devel-$(uname -r) gcc make perl

VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
mount -o loop /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run --nox11
umount /mnt
rm -rf /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso
rm -f /home/vagrant/.vbox_version

