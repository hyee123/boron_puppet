node "localhost.localdomain" {

exec {'dockerInstall':
   command => "/root/boron_puppet/scripts/dockerInstallScript.sh",
   #unless => 'test -e /usr/bin/docker',
}

package {'docker-ce':
   ensure => installed,
}

exec {'kubeInstall':
   command => "/root/boron_puppet/scripts/kubeInstallScript.sh",
   #unless => 'test -e /usr/bin/kubelet && test -e /usr/bin/kubeadm',
}

$kubepackages = ['kubelet', 'kubeadm']
package { $kubepackages:
   ensure => installed,
}

exec {'kubeSetup':
   command => "/root/boron_puppet/scripts/kubeMasterSetup.sh",
}


}
