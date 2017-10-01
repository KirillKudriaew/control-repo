class profile::vspheredeployer {
  $vsphereprereq = ['zlib-devel', 'libxslt-devel', 'patch', 'gcc']
  package { $vsphereprereq: }

include 'docker'

  class { 'docker':
    version => 'latest',
  }

  docker::run { 'helloworld-nginx':
  image                     => 'nginx',
  ports                     => ['80'],
  expose                    => ['80'],
  remove_container_on_start => true,
  remove_volume_on_start    => false,
  remove_container_on_stop  => true,
  remove_volume_on_stop     => false,
}

}
