sudo apt-get install vsftpd  -y

sudo systemctl start vsftpd
sudo systemctl enable vsftpd

sudo newusers /home/vagrant/lib/userlist.txt

sudo mv /etc/vsftpd.conf /etc/vsftpd.conf.orig

sudo cp /home/vagrant/lib/vsftpd.conf  /etc/vsftpd.conf

sudo service vsftpd restart
