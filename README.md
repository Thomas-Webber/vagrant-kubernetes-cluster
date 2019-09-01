# Vagrant Kubernetes Cluster
Multi-nodes kubernetes cluster using vagrant and kubeadm for local experiments

## Prerequisites
- at least a 4 cores CPU and 8 GB RAM and 30GB free disk space
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
1. `make ssh` Connect to the master node
2. Run `git clone https://github.com/Thomas-Webber/vagrant-kubernetes-cluster.git && cd vagrant-kubernetes-cluster`
3. `make install-helm` Install helm
4. `make install-prometheus` Install prometheus and grafana for monitoring
