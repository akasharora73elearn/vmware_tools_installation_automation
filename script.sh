sudo echo "installing vmware tools"
DIRECTORY="/media/`logname`"
if [ -d "$DIRECTORY" ]; then
 cd $DIRECTORY
else
 cd /media
fi
a='';b=' '; for i in `ls | grep V*` ; do a=$a$i$b; done; a=${a%?};cd "$a";
for i in `ls | grep *.tar.gz`; do sudo tar zxvf $i -C /tmp/; done
cd /tmp/vmware-tools-distrib/
sudo ./vmware-install.pl -f -default
cd
/usr/bin/vmware-user
#sudo shutdown -r +1 'System restarting in a minute'
#sudo shutdown -P +1 'System going down in a minute'
