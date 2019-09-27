# Jenkins-In-KIND - A CI Setup to Test Jenkins Kube Installs

A CI setup for installing Jenkins to a Kubernetes cluster.  Uses kind to create a cluster, sets up helm in the new cluster and uses the Jenkins helm chart to do an install

## Requirements
* docker
* kubectl
* helm
* kind

## To Install

Run: `./install.sh`