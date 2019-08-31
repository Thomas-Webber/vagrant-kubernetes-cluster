#!/usr/bin/env bash

alias ssh_to_master='ssh vagrant@127.0.0.1 -p 2271 '

# generate key-pair on master node
ssh_to_master 'ssh-keygen -t rsa -N "" -f id_rsa -q'
# Add the public key to each node
cat $MASTER:~/.ssh/id_rsa.pub >>  $NODE:~/.ssh/known_hosts

# Install kubectl
wget https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version --client

## Generate tls certificates
https://github.com/mmumshad/kubernetes-the-hard-way/blob/master/docs/04-certificate-authority.md
