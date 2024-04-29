# This manifest configures brand new Ubuntu machine to install
# NGINX and make it return a X-Served-By response header with
# the value of the server's hostname.
exec { 'update_apt':
  command  => 'apt-get update',
  provider => shell,
}
package { 'nginx_installer':
  name     => 'nginx',
  provider => 'apt',
}
exec { 'addheader':
  command => "sed -i \
's#root /var/www/html;#root /var/www/html;\n\n\tadd_header X-Served-By $HOSTNAME;\n#' \
/etc/nginx/sites-available/default",
  provider => shell,
}
exec { 'restart_nginx':
  command  => 'service nginx restart',
  provider => shell,
}
