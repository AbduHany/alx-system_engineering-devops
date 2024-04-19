# This manifest installs flask from pip3.
package { 'Flaskinstaller':
  name     => 'Flask',
  provider => 'pip3'
}
