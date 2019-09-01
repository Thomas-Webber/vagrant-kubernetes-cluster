# Vagrant Kubernetes Cluster
Multi-nodes kubernetes cluster using vagrant and kubeadm for local experiments

## Prerequisites
- at least a 4 cores CPU and 8 GB RAM and 40 GB free disk space
- vagrant 2.2.5+
- virtualbox 6.0.10+
- make

## Install
`make install` to provision the VMs and setup the cluster (see vagra)

## Clean
`make clean`

## Use the cluster
1. `make ssh` Connect to the master node
2. Run `git clone https://github.com/Thomas-Webber/vagrant-kubernetes-cluster.git && cd vagrant-kubernetes-cluster`
3. `make install-helm` Install helm
4. `make install-prometheus` Install prometheus and grafana for monitoring

## Notes
Tested on OSX and ubuntu bionic desktop
