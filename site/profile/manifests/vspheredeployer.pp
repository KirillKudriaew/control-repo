class profile::vspheredeployer {
  $vsphereprereq = ['zlib-devel', 'libxslt-devel', 'patch', 'gcc']
  package { $vsphereprereq: }
}
