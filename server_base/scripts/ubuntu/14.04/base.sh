

# Set up sudo
echo 'vagrant ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant

dpkg --purge apt-listchanges

# Update the box
apt-get -y update
apt-get -y --force-yes upgrade
apt-get -y --force-yes dist-upgrade

# reboot
echo "Rebooting the machine..."
#service networking stop
reboot
sleep 120


