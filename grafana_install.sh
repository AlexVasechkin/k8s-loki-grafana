#!/bin/bash

helm pull grafana/grafana

tar -zxf grafana-*.tgz

cp grafana/values.yaml grafana-values.yaml

helm upgrade --install --create-namespace --values grafana-values.yaml grafana -n loki grafana/grafana

kubectl get secret --namespace loki grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
