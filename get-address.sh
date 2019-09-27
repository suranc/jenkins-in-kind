#!/bin/bash

echo $(kubectl get node kind-control-plane -o jsonpath="{..status.addresses[0].address}"):$(kubectl get service jenkins -o jsonpath="{..ports[0].nodePort}")