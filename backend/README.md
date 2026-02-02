# Database creation

docker run -d --name mongodb-todo -p 27017:27017 -e MONGO_INITDB_DATABASE=todo mongo

# Docker network

docker network create network_01
docker network connect network_01 mongodb-todo

#
