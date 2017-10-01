class profile::vspheredeployer {
  $vsphereprereq = ['zlib-devel', 'libxslt-devel', 'patch', 'gcc']
  package { $vsphereprereq: }

  include 'docker'

  docker::run { 'helloworld-nginx':
  image                     => 'nginx',
  ports                     => ['80'],
  expose                    => ['8080'],
  remove_container_on_start => true,
  remove_volume_on_start    => false,
  remove_container_on_stop  => true,
  remove_volume_on_stop     => false,
}

}
