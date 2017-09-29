class profile::vspheredeployer {
  $vsphereprereq = ['zlib-devel', 'libxslt-devel', 'patch', 'gcc']
  package { $vsphereprereq: }

  vsphere_vm { '/HOME/CL01/Puppet/sample':
  ensure                      => 'running',
  cpus                        => '1',
  memory                      => '1024',
  source                      => '/Templates/Centos7-template',
}
}
