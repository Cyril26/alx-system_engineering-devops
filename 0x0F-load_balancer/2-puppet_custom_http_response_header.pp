# Custom HTTP header in a nginx server

# update ubuntu server
exec { 'update server':
  command  => 'apt-get update',
  user     => 'root',
  provider => 'shell',
}
->
# install nginx web server on server
package { 'nginx':
  ensure   => present,
  provider => 'apt'
}

file { '/etc/nginx/conf.d/custom_header.conf':
  content => "add_header X-Served-By $hostname;\n",
  require => Package['nginx'],
}

service { 'nginx':
  ensure  => 'running',
  enable  => true,
  require => File['/etc/nginx/conf.d/custom_header.conf'],
}