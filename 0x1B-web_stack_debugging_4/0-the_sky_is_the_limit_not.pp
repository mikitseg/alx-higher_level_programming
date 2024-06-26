exec { 'fix--for-nginx':
  command => 'sudo sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin',
  user    => 'root'
}

exec { 'nginx-restart':
  command => 'sudo systemctl restart nginx.service',
  path    => '/usr/local/bin/:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin',
  user    => 'root'
}

