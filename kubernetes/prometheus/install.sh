#!/usr/bin/env bash

# Create a new namespace
kubectl apply -f namespace.yml

# Deploy the prometheus pods
helm install stable/prometheus \
    --namespace monitoring \
    --name prometheus

# Check the prometheus pods
kubectl get pods -n monitoring

# Install Grafana with our config
kubectl apply -f grafana-config.yml
helm install stable/grafana \
    -f grafana-values.yml \
    --namespace monitoring \
    --name grafana

# Get the grafana password
kubectl get secret \
    --namespace monitoring \
    grafana \
    -o jsonpath="{.data.admin-password}" \
    | base64 --decode ; echo
