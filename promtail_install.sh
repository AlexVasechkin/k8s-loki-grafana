#!/bin/bash

helm pull grafana/promtail

tar -zxf promtail-*.tgz

cp promtail/values.yaml promtail-values.yaml
