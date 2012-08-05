class bluepill(
  $use_rsyslog   = false,
  $use_logrotate = false
){
  include bluepill::package
  class { 'bluepill::configs':
    use_rsyslog   => $use_rsyslog,
    use_logrotate => $use_logrotate
  }

  Class['bluepill::package'] -> Class['bluepill::configs']
}
