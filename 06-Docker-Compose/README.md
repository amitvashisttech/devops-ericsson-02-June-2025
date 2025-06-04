```
710  mkdir 06-Docker-Compose/01-Setup -p
  711  vim 06-Docker-Compose/01-Setup/docker-install.sh
  712  sh 06-Docker-Compose/01-Setup/docker-install.sh
  713  docker-compose version
  714  ls
  715  cd 06-Docker-Compose/
  716  ls
  717  mkdir 01-Nginx
  718  ls
  719  mv 01-Nginx 02-Nginx
  720  ls
  721  cd 02-Nginx/
  722  ls
  723  vim docker-compose.yaml
  724  ls
  725  docker-compose up -d
  726  docker ps
  727  vim docker-compose.yaml
  728  docker-compose up -d
  729  docker-compose stop
  730  docker-compose up -d
  731  docker ps
  732  docker-compose rm
  733  docker-compose up -d
  734  docker-compose ps
  735  docker ps
  736  docker-compose stop
  737  docker-compose rm
  738  docker ps
765  cd 04-App-Deploy/
  766  ls
  767  cp -rf ../../05-Docker/04-WebApp/* .
  768  ls
  769  cp -rf /root/webapp/target/hello-world.war .
  770  ls
  771  du -sh
  772  ls
  773  vim docker-compose.yaml
  774  ls
  775  docker-compose up -d build
  776  docker-compose up -d --build
  777  docker-compose ps
  778  docker images
  779  ls
  780  > hello-world.war
  781  ls
  782  du -sh
  783  docker-compose stop
  784  docker-compose rm
  785  ls
```
