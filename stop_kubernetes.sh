#!/usr/bin/env bash

kubectl delete pod sklearn

# wait a few seconds until the deployment changed state
sleep 2

# List kubernetes pods
kubectl get deploy,rs,svc,pods 