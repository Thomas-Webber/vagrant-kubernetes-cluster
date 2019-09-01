#!/usr/bin/env bash

kubectl apply -f service-account.yml
kubectl apply -f role-binding.yml

sudo snap install helm --classic

helm init --service-account tiller --wait
SERVER_IP=$(k get pods --all-namespaces -o wide | grep tiller-deploy | awk '{print $7}')
echo "export HELM_HOST=$SERVER_IP:44134" >> ~/.bashrc
