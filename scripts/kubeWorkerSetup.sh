#!/bin/bash

kubeadm join --token 841deb.bcf5a8948d2c50b9 192.168.60.31:6443
kubectl apply -f worker.yaml
