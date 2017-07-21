node "boroni.llnl.gov" {

file { '/etc/hosts':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/hosts",
}

file { '/etc/hostname':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/hostname",
}

file { '/etc/resolv.conf':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/resolv.conf",
}


file { '/etc/dhcpd.conf':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/dhcpd.conf",
}

$packages = ['ntp', 'mpi', 'slurm', 'munge', 'nfs', 'sudo']
package { $packages:
   ensure => installed,
}



}
