class bluepill::configs::logrotate {
  file { '/etc/logrotate.d/bluepill':
    owner  => root, group => root, mode => '0644',
    source => 'puppet:///modules/bluepill/logrotate'
  }
}
