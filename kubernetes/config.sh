#!/usr/bin/env bash

set -e

cd vagrant
cat <<EOF > .vagrant/kube_config
`vagrant ssh master-01 -c 'sudo cat /root/.kube/config'`
EOF
echo "export KUBECONFIG=$(pwd)/.vagrant/kube_config # Use config to connect to the cluster"
