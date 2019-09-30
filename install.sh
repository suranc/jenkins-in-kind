#!/bin/bash

# Use kind to create cluster
kind create cluster
export KUBECONFIG=$(kind get kubeconfig-path)

# Create malgoof namespace, service account, role and role binding
kubectl apply -f namespace-service-account-role-rolebinding.yaml
kubectl config set-context --current --namespace malgoof

# Install tiller
helm init --tiller-namespace malgoof

# Check if tiller is ready
helm version --tiller-namespace malgoof
while [ $? -ne 0 ]
do
    sleep 5
    helm version --tiller-namespace malgoof
done

# Install Jenkins into malgoof namespace
helm install -n jenkins stable/jenkins -f values.yaml  --tiller-namespace malgoof --namespace malgoof