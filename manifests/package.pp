class bluepill::package {
  package { 'bluepill':
    ensure   => installed,
    provider => gem
  }
}
