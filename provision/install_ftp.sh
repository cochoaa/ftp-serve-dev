#!/bin/bash
function print_out {
  echo "--------------------------------------------------"
  echo ""
  echo "$1"
  echo ""
  echo "--------------------------------------------------"
}

print_out "Instalacion FTP"
sudo apt-get install vsftpd  -y > /dev/null

print_out "Iniciar servicio FTP"
sudo systemctl start vsftpd

print_out "Activar inicio FTP con el S.O"
sudo systemctl enable vsftpd

print_out "Crear usuarios"
cat /home/vagrant/lib/userlist.txt
sudo newusers /home/vagrant/lib/userlist.txt

print_out "Crear carpeta ftp"
sudo su - ftpuser -c "mkdir -p /home/ftpuser/ftp"

print_out "Respaldo de archivo de config de FTP"
sudo mv /etc/vsftpd.conf /etc/vsftpd.conf.orig

print_out "Establecer parametros en config de FTP"
cat /home/vagrant/lib/vsftpd.conf 
sudo cp /home/vagrant/lib/vsftpd.conf  /etc/vsftpd.conf

print_out "Reiniciar servicio ftp"
sudo service vsftpd restart
