#!/bin/sh
kubectl apply -f namespace.yaml -f plex1.yaml -f pv-volume.yaml -f pvc-volume-claim.yml -f storageclass.yaml -f sonarr.yaml -f rutorrent.yaml -f jackett.yaml -f wireguard.yaml
sleep 10s
kubectl -n plexserver expose deployment/plex --type=LoadBalancer --port 32400
exit 0;

