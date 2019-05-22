sudo apt-get -y update
sudo apt-get -y upgrade
adduser git
sudo adduser git
sudo apt-get -y install mc nmap git
wget https://dl.gogs.io/0.11.86/gogs_0.11.86_linux_amd64.tar.gz
tar xvf gogs_0.11.86_linux_amd64.tar.gz
sudo mkdir /var/log/gogs
sudo chown -R git:git /var/log/gogs/
sudo cp gogs/scripts/systemd/gogs.service /etc/systemd/system
sudo rsync -avz gogs/* /home/git/
sudo chown -R git:git /home/git/
sudo setcap CAP_NET_BIND_SERVICE=+eip /home/git/gogs
mkdir -p /etc/systemd/system/
cp ./gogs.service /etc/systemd/system/
mkdir -p /home/git/custom/conf/
cp ./app.ini /home/git/custom/conf/
