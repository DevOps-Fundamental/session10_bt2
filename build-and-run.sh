docker build -t hw-backend:v1 .
docker images hw-backend:v1
docker run -d --name app-single-stage -p 8080:3000 hw-backend:v1
docker ps
docker logs app-single-stage
curl -i http://localhost:8080/
docker stop app-single-stage
docker rm app-single-stage
docker ps -a
