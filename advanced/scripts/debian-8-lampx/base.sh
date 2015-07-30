
# fix reboot bug: see https://github.com/mitchellh/vagrant/issues/5497
systemctl disable ssh.service
systemctl enable ssh.socket

# Set up sudo
echo 'vagrant ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant

dpkg --purge apt-listchanges

# Update the box
apt-get -y update
apt-get -y --force-yes upgrade
apt-get -y --force-yes dist-upgrade

# reboot
echo "Rebooting the machine..."
reboot
sleep 120

