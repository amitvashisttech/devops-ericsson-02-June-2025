
# Jenkins Deployment & Configuration


### First you have to be Super User : root
```
sudo su - 
```

### Install Docker Util & Download Jenkins Images 
```
  cd  05-Docker/01-Setup 
  sh  install-docker.sh 
  docker version
  docker pull jenkins/jenkins
  docker images
  docker run -d --name jenkins -p 9090:8080 -p 9091:50000 jenkins/jenkins
```

### Now you can access the Jenkins via Web Brower, Please go ahead & Complete the Setup process 
```
  http://172.31.0.100:9090
```

### Get the initial Credentials
```
  docker exec -it   jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

### Install Suggested Plugins 

### Create your first user.
