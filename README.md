# nginx-rate-limiting-blog-code
Code to refer to along with my rate limiting blog on hashnode
# set up your cluster on minikube

minikube start
minikube addons enable ingress

#verify
kubectl get pods -n ingress-nginx


# deploy the hello world app on your clusters

kubectl create deployment web --image=gcr.io/google-samples/hello-app:1.0
kubectl expose deployment web --type=NodePort --port=8080

#verify
kubectl get service web

#apply configmap.yaml
kubectl apply -f nginx.configmap.yaml

#verfiy changes
kubectl exec -it [YOUR INGRESS CONTROLLER POD NAME] -n ingress-nginx /bin/bash
cat nginx.conf

#apply ingress.yaml
kubectl apply -f rate-limit-ingress.yaml

#verfiy changes again
