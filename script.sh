cd /media/aa/
a='';b=' '; for i in `ls | grep V*` ; do a=$a$i$b; done; a=${a%?};cd "$a";
for i in `ls | grep *.tar.gz`; do tar zxvf $i -C /tmp/; done
cd /tmp/vmware-tools-distrib/
./vmware-install.pl -f -default
cd
/usr/bin/vmware-user
#sudo shutdown -r +1 'System restarting in a minute'
#sudo shutdown -P +1 'System going down in a minute'
