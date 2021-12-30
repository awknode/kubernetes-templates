#!/bin/sh
k apply -f namespace.yaml -f plex1.html -f pv-volume.yaml -f pvc-volume-claim.yml -f storageclass.yaml
sleep 10s
k -n plexserver expose deployment/plex --type=LoadBalancer --port 32400
exit 0;

