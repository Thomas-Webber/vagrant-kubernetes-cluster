# Vagrant Kubernetes Cluster
Multi-nodes kubernetes cluster using vagrant, ansible and kubeadm for local experiments

## Prerequisites
- at least a 4 cores CPU and 8GB RAM on your computer
- vagrant
- virtualbox
- make
- ansible
- kubectl

## Install
`make install`
The cluster servers are defined in vagrant/servers.yml \
The kubernetes installation processe uses ansible. For more details check the ansible/ directory

## Clean
`make clean`

## Use the cluster
`kubectl` use the local cluster \
`kubectl get pods -A` list all pods
