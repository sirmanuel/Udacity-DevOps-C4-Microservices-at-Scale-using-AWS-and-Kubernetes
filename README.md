[![<pipeline status>](https://circleci.com/gh/sirmanuel/Udacity-DevOps-C4-Microservices-at-Scale-using-AWS-and-Kubernetes.svg?style=svg)](https://app.circleci.com/pipelines/github/sirmanuel/Udacity-DevOps-C4-Microservices-at-Scale-using-AWS-and-Kubernetes)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes (portforward):  `./run_kubernetes.sh` 
4. Run in Kubernetes (expose via nodeport):  `./run_kubernetes_nodeport.sh` 

### Execute Data

1. Execute standalone:  `./make_prediction_local`
2. Execute in Docker:  `./make_prediction_docker.sh`
3. Execute in Kubernetes (portforward):  `./make_prediction_docker.sh` 
4. Execute in Kubernetes (expose via nodeport):  `./make_prediction_nodeport.sh` 

### Cleanup 

1. Cleanup in Docker:  `./stop_kubernetes.sh`
2. Cleanup in Kubernetes (portforward):  `./stop_kubernetes.sh` 
3. Cleanup in Kubernetes (expose via nodeport):  `./stop_kubernetes_nodeport.sh` 

### Cleanup Minikube
After you’re done deploying your containerized application and making test predictions via Kubernetes cluster, you should clean up your resources and delete the kubernetes cluster with a call to 
> minikube delete.

You can also pause your work and save the cluster state with a call to
> minikube stop.


