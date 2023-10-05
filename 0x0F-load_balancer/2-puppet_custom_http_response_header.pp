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