# This puppet script make changes to the local
# ssh client configuration file.
file { 'ssh_config':
  path => '/etc/ssh/ssh_config',
  ensure => 'file',
  content => 'Host *\n\tIdentityFile ~/.ssh/school\n\tBatchMode yes',
}
