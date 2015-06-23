

dpkg --purge apt-listchanges
apt-get -y update
apt-get -y --force-yes upgrade
apt-get -y --force-yes dist-upgrade

# reboot
echo "Rebooting the machine..."
reboot
sleep 120
