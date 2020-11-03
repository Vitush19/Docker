docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

docker build -t $DOCKER_USERNAME/tp-devops:docker-tp2-simple-api simple-api
docker build -t $DOCKER_USERNAME/tp-devops:docker-tp2-database database
docker build -t $DOCKER_USERNAME/tp-devops:docker-tp2-httpd httpd

docker push $DOCKER_USERNAME/tp-devops:docker-tp2-simple-api
docker push $DOCKER_USERNAME/tp-devops:docker-tp2-database
docker push $DOCKER_USERNAME/tp-devops:docker-tp2-httpd