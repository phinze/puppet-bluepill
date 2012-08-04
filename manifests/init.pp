class bluepill {
  include ruby

  ruby::gem { "bluepill": version => "0.0.51" }

  file { "/etc/rsyslog.d/bluepill.conf":
    owner => root, group => root,
    source => "puppet:///modules/bluepill/rsyslog.conf"
  }

  file { "/etc/logrotate.d/bluepill":
    owner => root, group => root,
    source => "puppet:///modules/bluepill/logrotate"
  }

  file { "/var/bluepill":
    ensure => directory,
    owner => root, group => root, mode => 644
  }

  file { "/etc/bluepill":
    ensure => directory,
    owner => root, group => root, mode => 644
  }

  file { "/etc/bluepill/conf.d":
    ensure => directory,
    owner => root, group => root, mode => 644
  }

  file { "/etc/bluepill/bluepill.pill":
    ensure => present,
    source => "puppet:///modules/bluepill/bluepill.pill",
    owner => root, group => root, mode => 644,
    require => File["/etc/bluepill"]
  }

  define pill($source) {
    file { "/etc/bluepill/conf.d/$name.rb":
      ensure => present,
      source => $source,
      owner => root, group => root, mode => 644,
      require => File["/etc/bluepill/conf.d"]
    }
  }
}
