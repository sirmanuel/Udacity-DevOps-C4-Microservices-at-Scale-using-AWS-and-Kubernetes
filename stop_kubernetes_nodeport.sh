#!/usr/bin/env bash

deployment_name="sklearn-deployment"

# stop nodeport servis (exposing)
kubectl delete service -l app=$deployment_name

# stop the deployment
kubectl delete deployment $deployment_name

# wait a few seconds until the deployment changed state
sleep 2

# List kubernetes pods
kubectl get deploy,rs,svc,pods 