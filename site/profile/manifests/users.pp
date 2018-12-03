class profile::users (
  Boolean $ensure = present,

) {
  user {'myadmin':
    ensure => $ensure,
    password => 'secret',
    home => '/home/myadmin',
  }
}
