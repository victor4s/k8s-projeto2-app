#!/bin/bash

echo -e "\nCriando imagem docker...\n"
docker build -t victor4s/k8s-projeto2-dio:1.0 app/

echo -e "\nRealizando o push das imagens...\n"
docker push victor4s/k8s-projeto2-dio:1.0

echo -e "\nCriando serviços e realizado deploy on cluster Kubernetes...\n"
kubectl apply -f ./mysql-deployment.yml
kubectl apply -f ./services.yml
kubectl apply -f ./app-deployment.yml