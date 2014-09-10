

# Set up sudo
echo 'vagrant ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant

# Update the box
apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade

# reboot
echo "Rebooting the machine..."
#service networking stop
reboot
sleep 120


