node "boroni.llnl.gov" {

file { '/etc/hosts':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/hosts",
}

file { '/etc/hostname':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/hostname",
}

file { '/etc/resolv.conf':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/resolv.conf",
}


file { '/etc/fstab':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/fstab",
}

file { '/etc/gshadow':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/gshadow",
}


file { '/etc/group':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/group",
}


file { '/etc/passwd':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/passwd",
}


file { '/etc/profile.d/mpi.sh':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/profile.d/mpi.sh",
}


file { '/etc/shadow':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/shadow",
}


file { '/etc/slurm/slurm.conf':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/slurm/slurm.conf",
}


file { '/etc/sysconfig/iptables':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/sysconfig/iptables",
}


file { '/etc/sysconfig/network-scripts/ifcfg-em1':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/sysconfig/network-scripts/ifcfg-em1",
}


file { '/etc/sysconfig/network-scripts/ifcfg-em2':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/sysconfig/network-scripts/ifcfg-em2",
}


file { '/etc/sysconfig/network-scripts/ifcfg-ib0':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/sysconfig/network-scripts/ifcfg-ib0",
}


file { '/etc/vsftpd/vsftpd.conf':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/vsftpd/vsftpd.conf",
}


file { '/etc/xinetd.d/tftp':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/xinetd.d/tftp",
}


file { '/tftpboot/ftp/pub/anaconda-ks.cfg':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/tftpboot/ftp/pub/anaconda-ks.cfg",
}


file { '/tftpboot/pxelinux.cfg/default':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/tftpboot/pxelinux.cfg/default",
}


file { '/etc/dhcp/dhcpd.conf':
   ensure => "file",
   owner => "root",
   group => "root",
   mode => "644",
   source => "/root/boron_puppet/etc/dhcp/dhcpd.conf",
}

$packages = ['ntp', 'mpi', 'slurm', 'munge', 'nfs', 'sudo', 'docker-ce', 'kubectl', 'kubeadm', 'yum-utils', 'device-mapper-persistent-data', 'lvm2']
package { $packages:
   ensure => installed,
}



}
