class profile::vspheredeployer {
  $vsphereprereq = ['zlib-devel', 'libxslt-devel', 'patch', 'gcc']
  package { $vsphereprereq: }

  vsphere_vm { '/HOME/CL01/Puppet/sample':
  ensure                      => 'running',
  #resource_pool               => 'general1',
  #cpu_reservation             => '0',
  cpus                        => '1',
  #guest_ip                    => '192.168.30.37',
  #hostname                    => 'sample',
  #instance_uuid               => '501870f2-f891-879f-2bb7-f87023789959',
  memory                      => '1024',
  #memory_reservation          => '0',
  #number_ethernet_cards       => '1',
  #power_state                 => 'poweredOn',
  #snapshot_disabled           => false,
  #snapshot_locked             => false,
  #snapshot_power_off_behavior => 'powerOff',
  template                    => false,
  #tools_installer_mounted     => false,
  #source                      => '/HOME/CL01/Templates/Centos7-template',
  #source_type                 => 'template',
  #uuid                        => '4218419b-3b98-18ca-e77f-93b567dda463',
}
}
