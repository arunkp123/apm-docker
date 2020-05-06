source ./.env
source colors.sh

printf "$yellow   ------------------------------------------------$reset"
printf "$yellow --------------$red APMP-DOCKER By ARUNKP$setnew $yellow---------------$reset"
printf "$yellow   ------------------------------------------------$reset"


printf "$red Github:$setnew $blue http://arunkp123.github.io/apmp-docker $reset"
printf "$green Installing Pre requisites...$reset"

printf "$green Creating required directories..$reset"
if [ -d $PROJECT_ROOT ] 
then
    echo "Directory $PROJECT_ROOT exists. Skipping..." 
else
    mkdir $PROJECT_ROOT
    echo "Created $PROJECT_ROOT ..." 
fi

printf "$lightblue Enter system password if asked!$reset"
sudo -- sh -c "echo '127.0.0.1 $DOMAIN' >> /etc/hosts"

read -p "Do you want to reset docker and install(y/n)? " CONT
if [ "$CONT" = "y" ]; then
 docker system prune -a;
 
else
  echo "Docker reset skipped...";
fi

docker-compose down && docker-compose up --build -d


