#!/bin/bash

helm pull grafana/grafana

tar -zxf grafana-*.tgz

cp grafana/values.yaml grafana-values.yaml

helm upgrade --install --create-namespace --values grafana-values.yaml grafana -n loki grafana/grafana
