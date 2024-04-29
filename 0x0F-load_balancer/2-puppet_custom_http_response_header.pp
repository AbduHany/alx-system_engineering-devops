# This manifest configures brand new Ubuntu machine to install
# NGINX and make it return a X-Served-By response header with
# the value of the server's hostname.
exec { 'update_apt':
  command  => '/usr/bin/sudo /usr/bin/apt update',
}
package { 'nginx_installer':
  name     => 'nginx',
  provider => 'apt',
}
exec { 'addheader':
  command => '/usr/bin/sudo /usr/bin/sed -i \
"s#root /var/www/html;#root /var/www/html;\n\n\tadd_header X-Served-By $hostname;\n#" \
/etc/nginx/sites-available/default'
}
exec { 'restart_nginx':
  command  => '/usr/bin/sudo /usr/sbin/service nginx restart',
}
