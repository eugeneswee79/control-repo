class profile::users {
  user {'myadmin':
    ensure => absent,
    password => 'secret',
    home => '/home/myadmin',
  }
}
