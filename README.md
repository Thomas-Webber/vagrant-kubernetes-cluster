# Vagrant Kubernetes Cluster
Local multi-nodes kubernetes cluster local setup using vagrant, ansible, kubeadm for local experiments

## Requirements
- vagrant
- virtualbox
- make
- ansible

## Install cluster
`make install`

## Delete cluster
`make clean`

## Use cluster
`make ssh` to connect to the master node
`kubectl get pods -A` list all pods
