class bluepill::configs(
  $use_rsyslog,
  $use_logrotate
) {
  file { '/var/bluepill':
    ensure => directory,
    owner  => root, group => root, mode => '0755'
  }

  file { '/etc/bluepill':
    ensure => directory,
    owner  => root, group => root, mode => '0755'
  }

  file { '/etc/bluepill/conf.d':
    ensure => directory,
    owner  => root, group => root, mode => '0755'
  }

  file { '/etc/bluepill/bluepill.pill':
    ensure => present,
    source => 'puppet:///modules/bluepill/bluepill.pill',
    owner  => root, group => root, mode => '0644'
  }
}
