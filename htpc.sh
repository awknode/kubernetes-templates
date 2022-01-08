#!/bin/sh
kubectl apply -f namespace.yaml -f plex.yaml -f pv-volume.yaml -f pvc-volume-claim.yml # -f storageclass.yaml -f wireguard.yaml -f rutorrent.yaml -f jackett.yaml -f sonarr.yaml -f organizr
sleep 10s
kubectl -n plexserver expose deployment/plex --type=LoadBalancer --port 32400
exit 0;

