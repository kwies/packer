
# Set up sudo
#sudo sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
#echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers

# install insecure key
mkdir /home/vagrant/.ssh
wget --no-check-certificate -O authorized_keys 'https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub'
mv authorized_keys /home/vagrant/.ssh
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh
