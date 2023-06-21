sudo su
ls
vim docker-compos.yml
docker-compos up -d
mv docker-compos.yml docker-compose.yml 
docker-compose up -d
sudo su
ls
cd docker/
ls
cd zabbix/
ls
cd ..
ls
vim docker-compose.yml 
docker ps
permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json": dial unix /var/run/docker.sock: connect: permission denied
sudo su
