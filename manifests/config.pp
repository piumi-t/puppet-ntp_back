class ntp::config(
  Striing $config_name     = $::ntp::config_name,
  String $config_file_mode = $::ntp::config_file_mode,
  Array[String] $servers   = $::ntp::servers,
) {
  file { "/etc/${config_name}":
    ensure  => file,
    mode    => $config_file_mode,
    owner   => 0,
    group   => 0,
    content => template("${module_name}/ntp.conf.erb"),
  }
}
