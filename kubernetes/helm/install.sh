#!/usr/bin/env bash

kubectl apply -f service-account.yml
kubectl apply -f role-binding.yml

echo "[!] Warning, unsecure for production"
helm init --service-account tiller --wait
