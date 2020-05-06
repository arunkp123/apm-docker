# APMP-DOCKER
## Apache+PHP+MySQL+PHPMyAdmin

------------



**Intro**
This is a simple repo to setup apache, php, mysql phpmyadmin on a docker environment with just a single command.

------------


**Folder Structure:**

```
/apmp-docker/
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
**Commands:**

```shell
git clone https://github.com/arunkp123/apm-docker.git
cd apm-docker
sh setup.sh
```

Follow prompts and let the apmp-docker do the rest for you.

Once the setup is completed, try accessing the domain: 
`http://my.local.com`


If you see this error:
`The server requested authentication method unknown to the client [caching_sha2_password] 
`
Go to:
```
my.local.com:8080
```
Login with root/root . In the SQL query box, execute below query:
```
ALTER USER 'root'@'% 'IDENTIFIED WITH mysql_native_password BY 'root';
```
Try accessing *http://my.local.com* again and it should get connected to mysql.

Now you are all set to go ahead and add your php projects to the `public_html` folder inside the `apmp-docker` folder.

```
Note: This script is tested on Mac and should be compatible with linux distributions as well. Try it on windows and share your feedbacks. Thankyou :)

```
