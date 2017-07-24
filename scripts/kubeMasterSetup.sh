#!/bin/bash

systemctl enable kubelet && systemctl start kubelet
kubeadm init --pod-network-cidr=10.100.0.0/16
kubectl apply -f calico.yaml
kubectl apply -f master.yaml
