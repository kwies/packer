# Clean up
apt-get -y autoremove
apt-get -y clean

# remove default kernel (since there is an update available)
#apt-get purge -y linux-headers-3.13.0-24-generic linux-image-3.13.0-24-generic linux-image-extra-3.13.0-24-generic linux-headers-3.13.0-24
