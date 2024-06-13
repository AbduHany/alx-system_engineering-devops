# This puppet manifest fixes the webstack debugging #4 container.
file { 'increasing_limits':
  ensure  => file,
  path    => '/etc/default/nginx',
  content => 'ULIMIT="-n 200"',
}
