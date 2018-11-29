class profile::users {
  user {'myadmin':
    ensure => present,
    password => 'secret',
  }
}
