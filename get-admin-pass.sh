#!/bin/bash

printf $(kubectl get secret --namespace malgoof jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo