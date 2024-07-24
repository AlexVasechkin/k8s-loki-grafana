#!/bin/bash

helm repo add grafana https://grafana.github.io/helm-charts

helm repo update

helm search repo grafana

helm pull grafana/loki

tar -zxf ./loki-*.tgz

cp loki/values.yaml loki/values-default.yaml
