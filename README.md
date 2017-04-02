# vmware_tools_installation_automation
cd /media/aa/
a='';b=' '; for i in `ls | grep V*` ; do a=$a$i$b; done; a=${a%?};cd "$a";
for i in `ls | grep *.tar.gz`; do tar zxvf $i -C /tmp/; done
cd /tmp/vmware-tools-distrib/
./vmware-install.pl -f -default
cd
/usr/bin/vmware-user
restart
#sudo shutdown -P +1 'going down in a minute'
