## vagrant-php
===========

### 1) Download and Install Vagrant 1.0.3
===========
> http://downloads.vagrantup.com/tags/v1.0.3

### 2) Download Virtual Box 4.1 (currently 4.2 is not supported)
===========
> https://www.virtualbox.org/wiki/Download_Old_Builds_4_1

Note: all settings are stored in ``` ~/.vagrant.d ```. If you want to do a clean install, just remove that folder.

### 3) Clone the repo
===========
```bash
git clone https://github.com/shanecowherd/vagrant-php.git
cd vagrant-php
```

### 4) Install Guest Additions Updater for Virtual Box
===========
```bash
vagrant gem install vagrant-vbguest
```

### 5) Download Server Image, I used one from http://www.vagrantbox.es
===========
```bash
vagrant box add base http://dl.dropbox.com/u/1537815/precise64.box
vagrant up
```

### 6) Restart the VM
===========
```bash
vagrant reload
```

### 7) In a browser goto http://localhost:8081

### Notes
===========
* If you make changes to httpd.conf reload your settings with ```vagrant provision```
* To ssh into the server type ```vagrant ssh```
* Mysql login: ```vagrant```
* Mysql pass: ```vagrant```
* HTTP Port: ```8081``` but in your code you can use ```80```
* Mysql Port: ```13306``` but in your code you can use ```3306```
