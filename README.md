# ftp-serve-dev
Servidor FTP para ambiente de desarrollo

Dependencies
------------

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](https://www.vagrantup.com)

Setup
-----

* Download and install Virtual Box

* Download and install Vagrant

* Clone this repo

* Start virtual machine

```
cd ftp-serve-dev
vagrant up
```
* Use with Filezilla 

```
user:ftpuser 
pass:ftpuser
port:21
ip:192.168.75.75
dir:/home/ftpuser
