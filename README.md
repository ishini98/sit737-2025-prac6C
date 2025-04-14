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

