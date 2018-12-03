class profile::users_demo (
  String $ensure = present,

) {
  user {'myadmin':
    ensure => $ensure,
    password => 'secret',
    home => '/home/myadmin',
  }
}
