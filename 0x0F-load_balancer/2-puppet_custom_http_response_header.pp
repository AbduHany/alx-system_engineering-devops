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
file { 'index_file_creator':
  ensure  => 'file',
  path    => '/var/www/html/index.html',
  content => 'Hello World!',
}
file { 'config_file':
  path    => '/etc/nginx/sites-available/default',
  content => 'server {
    listen 80 default_server;
    listen [::]:80 default_server;
    root /var/www/html;
    add_header X-Served-By \\$hostname;
    server_name _;
    location /redirect_me {
        return 301 https://www.alxafrica.com/;
    }
    location / {
        try_files \\${uri} \\${uri}/ =404;
    }
}',
}
exec { 'restart_nginx':
  command  => '/usr/bin/sudo /usr/sbin/service nginx restart',
}
