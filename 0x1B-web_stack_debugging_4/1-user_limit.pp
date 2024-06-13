# This manifest fixes the webstack debugging task #1 containter
file { 'change_holberton_limits':
  ensure  => file,
  path    => '/etc/security/limits.conf',
  content => 'holberton hard nofile 1024
holberton soft nofile 4096',
}
