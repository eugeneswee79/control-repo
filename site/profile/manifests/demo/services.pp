class profile::demo::services (
  #String $ensure = present,
) {

  service {'crond': 
    ensure => 'stopped',
  }
}
