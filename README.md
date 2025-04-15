<<<<<<< HEAD
# SIT737 - Kubernetes Interaction Task

This repository contains the solution for the Cloud Native Application Development task involving Kubernetes interactions and application updates.

## Prerequisites

- Git
- VS Code
- Node.js 14+
- Docker
- Kubernetes cluster (Minikube or cloud-based)
- kubectl

## Setup Instructions

### 1. Clone Repository

```bash
git clone https://github.com/<ishini98>/sit737-2025-prac6c.git
cd sit737-2025-prac6c

```
=======
##Task 6.2C  Interacting with Kubernetes


#Overview

Deploy and update a Node.js app on Kubernetes with zero downtime.
#Setup
1.	Start Minikube:
   
minikube start --driver=docker  
kubectl apply -f deployment.yaml -f service.yaml


#Verify

kubectl get pods,svc  
kubectl port-forward svc/node-web-app-service 8080:80  
curl http://localhost:8080  # Returns "Hello v1!" 


#Update to v2

1.	Build new image:
docker build -t <user>/node-web-app:v2 . && docker push <user>/node-web-app:v2

3.	Rollout update:
kubectl set image deployment/node-web-app node-web-app=<user>/node-web-app:v2  
kubectl rollout status deployment/node-web-app


#Troubleshooting

•	Pending IP? Run minikube tunnel.
•	Rollback: kubectl rollout undo deployment/node-web-app.

