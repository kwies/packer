
# Clean up unneeded packages.
yum -y clean all

# solve network interface problems
rm /etc/udev/rules.d/70-persistent-net.rules
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm /lib/udev/rules.d/75-persistent-net-generator.rules
rm -rf /dev/.udev/
sed -i "/^HWADDR/d" /etc/sysconfig/network-scripts/ifcfg-eth0

