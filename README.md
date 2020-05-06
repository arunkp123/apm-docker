APMP-DOCKER: Apache+PHP+MySQL+PHPMyAdmin
===================================

### Intro
This is a simple repo to setup apache, php, mysql phpmyadmin on a docker environment with just a single command.

```
/apm-docker/
├── apache
│   ├── Dockerfile
│   └── demo.apache.conf
├── docker-compose.yml
├── php
│   └── Dockerfile
└── public_html
│   └── index.php
├── setup.sh
```


```
git clone https://github.com/arunkp123/apm-docker.git
cd apm-docker
sh setup.sh
```

Next, input system password if asked. Next, answer if you want to remove all containers and images before setting up your apm-docker.

Note: This script is tested on Mac and should be compatible with linux distributions as well. Try it on windows and share your feedbacks.
