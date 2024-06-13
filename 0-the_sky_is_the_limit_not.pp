# This puppet manifest fixes the webstack debugging #4 container.
file { 'increasing_limits':
  path => '/etc/default/nginx',
  ensure => file,
  content => 'ULIMIT="-n 200"',
}
