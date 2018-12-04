class profile::demo::lamp {

  # execute 'apt-get update'
  exec { 'yum':                    # exec resource named 'yum'
    command => '/usr/bin/yum'  # command this resource will run
  }

  # install apache2 package
  package { 'apache2':
    require => Exec['yum'],        # require 'yum' before installing
    ensure => installed,
  }

  # ensure apache2 service is running
  service { 'apache2':
    ensure => running,
  }

  # install mysql-server package
  package { 'mysql-server':
    require => Exec['yum'],        # require 'yum' before installing
    ensure => installed,
  }

  # ensure mysql service is running
  service { 'mysql':
    ensure => running,
  }

  # install php5 package
  package { 'php5':
    require => Exec['yum'],        # require 'yum' before installing
    ensure => installed,
  }

  # ensure info.php file exists
  file { '/var/www/html/info.php':
    ensure => file,
    content => '<?php  phpinfo(); ?>',    # phpinfo code
    require => Package['apache2'],        # require 'apache2' package before creating
  } 
}
