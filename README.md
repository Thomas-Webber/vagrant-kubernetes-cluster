# Vagrant Kubernetes Cluster
Multi-nodes kubernetes cluster using vagrant and kubeadm for local experiments

## Prerequisites
- at least a 4 cores CPU and 8 GB RAM and 40GB free disk space
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
`cd vagrant && vagrant ssh master-1`
`kubectl get pods -A`
