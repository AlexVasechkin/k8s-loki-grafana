#!/bin/bash

helm pull grafana/promtail

tar -zxf promtail-*.tgz

cp promtail/values.yaml promtail-values.yaml

helm upgrade --install --create-namespace --values promtail-values.yaml promtail -n loki grafana/promtail
