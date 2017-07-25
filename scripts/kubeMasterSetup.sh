#!/bin/bash

kubeadm reset
systemctl stop kubelet
systemctl daemon-reload
systemctl stop firewalld

sudo echo "[Service]
Environment=\"KUBELET_KUBECONFIG_ARGS=--kubeconfig=/etc/kubernetes/kubelet.conf --require-kubeconfig=true\"
Environment=\"KUBELET_SYSTEM_PODS_ARGS=--pod-manifest-path=/etc/kubernetes/manifests --allow-privileged=true\"
Environment=\"KUBELET_NETWORK_ARGS=--network-plugin=cni --cni-conf-dir=/etc/cni/net.d --cni-bin-dir=/opt/cni/bin\"
Environment=\"KUBELET_DNS_ARGS=--cluster-dns=10.96.0.10 --cluster-domain=cluster.local\"
Environment=\"KUBELET_AUTHZ_ARGS=--authorization-mode=Webhook --client-ca-file=/etc/kubernetes/pki/ca.crt\"
Environment=\"KUBELET_CADVISOR_ARGS=--cadvisor-port=0\"
Environment=\"KUBELET_CGROUP_ARGS=--cgroup-driver=cgroupfs\"
ExecStart=
ExecStart=/usr/bin/kubelet \$KUBELET_KUBECONFIG_ARGS \$KUBELET_SYSTEM_PODS_ARGS \$KUBELET_NETWORK_ARGS \$KUBELET_DNS_ARGS \$KUBELET_AUTHZ_ARGS \$KUBELET_CADVISOR_ARGS \$KUBELET_CGROUP_ARGS \$KUBELET_EXTRA_ARGS" > /etc/systemd/system/kubelet.service.d/10-kubeadm.conf        


kubeadm init --pod-network-cidr=10.100.0.0/16
#kubectl apply -f calico.yaml
#kubectl apply -f master.yaml


