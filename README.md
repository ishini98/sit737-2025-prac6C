# 6.1P Kubernetes Deployment for Node.js Web App

## Requirements

- Docker
- Minikube
- kubectl

## Steps to Deploy

1. Start Minikube:  
   `minikube start --driver=docker`

2. Build Docker image:
   ```bash
   eval $(minikube -p minikube docker-env)
   docker build -t node-web-app:latest .
   ```
