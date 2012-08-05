class bluepill::configs::conditional(
  $use_rsyslog,
  $use_logrotate
) {
  if $use_rsyslog {
    include bluepill::configs::rsyslog
    Package['rsyslog'] -> Class['bluepill::configs::rsyslog']
  }

  if $use_logrotate {
    include bluepill::configs::logrotate
    Package['logrotate'] -> Class['bluepill::configs::logrotate']
  }
}
