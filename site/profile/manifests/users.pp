class profile::users (
  Boolean $ensure = true,

) {
  user {'myadmin':
    ensure => $ensure,
    password => 'secret',
    home => '/home/myadmin',
  }
}
