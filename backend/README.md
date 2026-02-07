# Database creation

docker run -d --name mongodb-todo -p 27017:27017 -e MONGO_INITDB_DATABASE=todo mongo

# Docker network

docker network create network_01
docker network connect network_01 mongodb-todo

# Steps

# Step 1: Create vps via terraform on local ubuntu

New IP of VPS will be shown in terminal

## Step 1.1 Replace VPS IP on ansible and axios of FE

ansible: replace the ip in the host.ini

# Step 2: Aisible

- install
  - docker
  - docker-compose
  - mongodb
  - jenkins
  - grafana
  - prometheus
  - node exporter
  - alertmanager exporter

- create prometheus.yml on /root of vps

- clone git repo
  - check repo exist

- Copy env from template from local ubuntu to vps backend

- Copy file prometheus.yml from local ubuntu to vps /root

- create network
  - bind network to mongodb

run ansible command

# Step 3: Check docker container of jenkins and mongodb on vps

# Step 4: Install plugins for jenkins

# Step 5: add pipeline for build jenkins file from remove

- add credential for vps ssh (SSH Username with private key)

- add credential for github repo login (username with password)

- add credential for github webhook (secret text)
  - add secret id of webhook-secret to Github config (Advanced/Shared secret)

# Step 6: replace url of webhook on github webhook

usual url: http://VPS_IP:8080/github-webhook/

# Check if exporter showed data

use url of vps to see of data on exporter shown, e.g. http://146.190.105.244:9100/metrics

# Check if prometheus connected to node exporter

use url of vps to see if exporter and prometheus connected (file yml excepted by prometheus)
example: http://146.190.105.244:9090/targets

# Connect Grafana to prometheus

Connection> Data sources> + Add new data source> Connection>input the string http://prometheus:9090/

> Save & Test> if OK> Data sources (again)

# Build dashboard on Grafana

Connection> Data sources> 🪟 Build a dashboard (inside the prometheus source)> Import dashboard> input 1860 to id box> Load> Import

# Trigger push request from local PC

we changed vps ip inside the axios of FE, thus we have new commit to push.
