#!/bin/bash

helm repo add grafana https://grafana.github.io/helm-charts

helm repo update

helm search repo grafana

helm pull grafana/loki

tar -zxf ./loki-*.tgz

cp loki/values.yaml loki/values-default.yaml

# получаем название dnsService
kubectl get svc --namespace=kube-system -l k8s-app=kube-dns

helm upgrade --install --create-namespace --values loki-values-real.yaml loki -n loki grafana/loki
