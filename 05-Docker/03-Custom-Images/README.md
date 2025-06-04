  539  mkdir 03-Custom-Images
  540  ls
  541  cd 03-Custom-Images/
  542  ls
  543  docker run -it ubuntu
  544  ls
  545  vim Dockerfile
  546  ls
  547  docker build -t myapache:v1 .
  548  ls
  549  docker images
  550  docker run -d --name test-mypache-1 myapache:v1
  551  docker ps
  552  docker inspect 3e6bc9b3db15
  553  curl 172.17.0.4
  554  ls
  555  mkdir v1
  556  ls
  557  mv Dockerfile v1/
  558  cp -rf v1 v2
  559  ls
  560  cd v2/
  561  ls
  562  vim info.html
  563  ls
  564  vim Dockerfile
  565  ls
  566  docker build -t myapache:v2 .
  567  docker ps
  568  docker images
  569  docker run -d --name test-mypache-2 -P myapache:v2
  570  docker ps

