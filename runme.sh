#!/usr/bin/env bash
helm repo add stable https://kubernetes-charts.storage.googleapis.com
helm pull stable/prometheus-operator  --untar
helm template cw ./prometheus-operator --values prometheus-values.yaml  > prometheus-full.yaml
