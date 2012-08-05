define bluepill::pill(
  $source,
  $pill_name = $title
) {
  file { "/etc/bluepill/conf.d/${pill_name}.rb":
    ensure  => present,
    source  => $source,
    owner   => root, group => root, mode => '0644'
  }
}
