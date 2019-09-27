#!/bin/bash

kind cluster create
export KUBECONFIG=$(kind get kubeconfig-path)
kubectl config set-context --current --namespace malgoof

kubectl apply -f namespace-service-account-role-rolebinding.yaml
helm init --service-account malgoof --tiller-namespace malgoof
helm install -n jenkins stable/jenkins -f values.yaml  --tiller-namespace malgoof --namespace malgoof