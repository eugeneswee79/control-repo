class profile::users (
  String $ensure = present,

) {
  user {'myadmin':
    ensure => $ensure,
    password => 'secret',
    home => '/home/myadmin',
  }
}
