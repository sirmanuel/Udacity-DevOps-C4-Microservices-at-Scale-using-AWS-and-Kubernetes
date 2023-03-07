#!/usr/bin/env bash

export NODE_PORT=$(kubectl get services/sklearn-deployment -o go-template='{{(index .spec.ports 0).nodePort}}')
echo NODE_PORT=$NODE_PORT

export MINIKUBE_IP=$(minikube ip)
echo MINIKUBE_IP=$MINIKUBE_IP

# POST method predict
curl -d '{  
   "CHAS":{  
      "0":0
   },
   "RM":{  
      "0":6.575
   },
   "TAX":{  
      "0":296.0
   },
   "PTRATIO":{  
      "0":15.3
   },
   "B":{  
      "0":396.9
   },
   "LSTAT":{  
      "0":4.98
   }
}'\
     -H "Content-Type: application/json" \
     -X POST http://$MINIKUBE_IP:$NODE_PORT/predict
