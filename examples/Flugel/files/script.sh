LIST_OF_APPS="nginx"

sudo apt update -y && sudo apt upgrade -y
sudo apt-get install -y aptitude 

sudo aptitude update
sudo aptitude install -y $LIST_OF_APPS
sudo /etc/init.d/nginx restart