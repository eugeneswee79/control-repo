class profile::demo::users (
  String $ensure = present,
) {

  case $facts['os']['family'] {
    'Windows': {
      user {'win_admin':
        ensure => $ensure,
        password => 'secret',
      }
    }

    default: {
      group {'admins':
        ensure => $ensure,
        gid => '888'
      }

      user {'myadmin':
        ensure => $ensure,
        password => 'secret',
        shell => '/bin/bash',
        home => '/home/myadmin',
        managehome => true,
        gid => 'admins',
      }
    }
  }
}
