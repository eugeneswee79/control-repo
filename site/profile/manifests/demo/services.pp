class profile::demo::services (
  #String $ensure = present,
) {

  service {'cron': 
    ensure => 'stopped',
  }
}
