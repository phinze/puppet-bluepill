class bluepill::configs::rsyslog {
  file { '/etc/rsyslog.d/bluepill.conf':
    owner  => root, group => root, mode => '0644',
    source => 'puppet:///modules/bluepill/rsyslog.conf'
  }
}
