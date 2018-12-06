class profile::demo::lamp {

  # install httpd package
  package { 'httpd':
    ensure => installed,
  }

  # ensure httpd service is running
  service { 'httpd':
    ensure => running,
  }

  # install mariadb package
  package { 'mariadb-server':
    ensure => installed,
  }

  # ensure mariadb service is running
  service { 'mariadb':
    ensure => running,
  }

  # install php package
  package { 'php':
    ensure => installed,
  }

  # ensure info.php file exists
  file { '/var/www/html/info.php':
    ensure => file,
    content => '<?php  phpinfo(); ?>',  # phpinfo code
    require => Package['httpd'],        # require 'httpd' package before creating
  } 
}
