class profile::demo::lamp {

  # # execute 'yum'
  # exec { 'yum':                    # exec resource named 'yum'
  #   command => '/usr/bin/yum'  # command this resource will run
  # }

  # install apache2 package
  package { 'httpd':
    # require => Exec['yum'],        # require 'yum' before installing
    ensure => installed,
  }

  # ensure apache2 service is running
  service { 'httpd':
    ensure => running,
  }

  # install mysql-server package
  package { 'mysql-server':
    # require => Exec['yum'],        # require 'yum' before installing
    ensure => installed,
  }

  # ensure mysql service is running
  service { 'mysql':
    ensure => running,
  }

  # install php5 package
  package { 'php5':
    # require => Exec['yum'],        # require 'yum' before installing
    ensure => installed,
  }

  # ensure info.php file exists
  file { '/var/www/html/info.php':
    ensure => file,
    content => '<?php  phpinfo(); ?>',    # phpinfo code
    require => Package['httpd'],        # require 'apache2' package before creating
  } 
}
