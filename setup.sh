source ./.env
echo " $red ########## Setup by arunkp123 ###############"
echo "Installing Pre requisites... "
echo "Enter system password if asked!"
echo "Making directory $PROJECT_PATH "
mkdir $PROJECT_PATH
mkdir apache
mkdir php
sudo -- sh -c "echo '127.0.0.1 $DOMAIN' >> /etc/hosts"


echo ""
read -p "Do you want to reset docker and install(y/n)? " CONT
if [ "$CONT" = "y" ]; then
 docker system prune -a;
 
else
  echo "Docker reset skipped...";
fi

docker-compose down && docker-compose up --build -d


