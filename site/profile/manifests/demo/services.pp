# Use this class to disable unwanted services

class profile::demo::services (
  # String $ensure = present,
) {

  service {'crond': 
    ensure => 'stopped',
    enable => false,
  }
}
