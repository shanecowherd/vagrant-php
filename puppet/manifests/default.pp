group { "puppet":
        ensure => "present",
    }

class apache { 
  package { "apache2": ensure => present } 
  service { "apache2": ensure => running } 
} 

class apache::disabled inherits apache { 
  Package["apache2"] { ensure => absent } 
  Service["apache2"] { ensure => stopped } 
}       

class apache::uninstall {
  package { 'apache2': ensure => purged }
  package { 'apache2-utils': ensure => purged }
  package { 'apache2.2-bin': ensure => purged }
  package { 'apache2.2-common': ensure => purged }
   
}

file {
  "httpd.conf":
    notify  => Service["apache2"],
    mode => 644,
    owner => root,
    group => root,
    path => "/etc/apache2/httpd.conf",
    source => "/vagrant/httpd.conf",
}

class php {
  package { "php5": ensure => present }
  package { "libapache2-mod-php5": ensure => present }
}


class { 'mysql::server':
  config_hash => { 'root_password' => 'vagrant', 'bind_address'  => $::ipaddress }
}


mysql::db { 'server_logs':
  user     => 'vagrant',
  password => 'vagrant',
  host     => '%',
  grant    => ['all'],
}




include apache
include php
include mysql

