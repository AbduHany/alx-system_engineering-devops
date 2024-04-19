# This manifest installs flask from pip3.
package { 'Flaskinstaller':
  ensure   => '2.1.0',
  provider => 'pip3',
  name     => 'flask',
}
