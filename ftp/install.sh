
echo "Installation of FTP has been started."
apt-get  update && apt-get install vsftpd -y
cp ./vsftpd.conf /etc/vsftpd.conf
service vsftpd start
adduser ftpuser --gecos "ftpuser,,," --disabled-password
echo "ftpuser:ftpuser" | sudo chpasswd
service vsftpd start
