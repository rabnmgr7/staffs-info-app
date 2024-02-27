#!/bin/bash
docker image rm -f staffs-info-node-app:latest staffs-info-db:latest || true
docker build -t staffs-info-node-app ./node/
docker build -t staffs-info-db ./db/
