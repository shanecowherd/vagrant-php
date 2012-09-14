vagrant-php
===========

Download and Install Vagrant 1.0.3
http://downloads.vagrantup.com/tags/v1.0.3

Download Virtual Box 4.1 (currently 4.2 is not supported)
https://www.virtualbox.org/wiki/Download_Old_Builds_4_1

Note: all settings are stored in ~/.vagrant.d
If you want to do a clean install, just remove that folder.

Create a folder
===========
mkdir dev_environment
cd dev_environment

Install Auto Guest Additions Updater for Virtual Box
===========
vagrant gem install vagrant-vbguest

Download Server Image - I used one from http://www.vagrantbox.es
===========
vagrant box add base http://dl.dropbox.com/u/1537815/precise64.box 
vagrant init
vagrant up

Copy files from this repo to your dev_environment folder, replacing the current Vagrantfile
===========
vagrant reload

In a browser goto http://localhost:8081
