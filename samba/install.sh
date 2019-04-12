
echo "Installation of Samba has been started."
cp ./hostname /etc/
cp ./hosts /etc/
apt-get update && apt-get install samba -y
mkdir /srv/kozos
chmod 777 /srv/kozos
mkdir /srv/readonly
chmod 755 /srv/readonly
cp ./smb.conf /etc/samba/
service smbd restart
adduser user2 --gecos "user2,,," --disabled-password
echo "user2:user2" | sudo chpasswd
mkdir /srv/user2
chown user2 /srv/user2
chmod 700 /srv/user2
(echo user2; echo user2) | smbpasswd -s -a user2
service smbd restart
service smbd status
