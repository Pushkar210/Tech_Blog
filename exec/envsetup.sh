#!/bin/bash

sudo DEBIAN_FRONTEND=noninteractive apt-get update -y
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
sudo DEBIAN_FRONTEND=noninteractive apt-get update -y
sudo DEBIAN_FRONTEND=noninteractive apt install python-is-python3 -y
sudo DEBIAN_FRONTEND=noninteractive apt-get install python3-pip -y
sudo DEBIAN_FRONTEND=noninteractive apt-get install python3.10-venv -y
#sudo DEBIAN_FRONTEND=noninteractive apt-get install gunicorn -y
#sudo DEBIAN_FRONTEND=noninteractive apt-get install nginx -y

git clone https://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@github.com/Pushkar210/Tech_Blog.git

cd Tech_Blog


if [ -d "env" ] 
then
    echo "Python virtual environment exists." 
else
    echo "Creating Python Virtual Environment"
    sudo python3 -m venv env
    echo "Python Virtual Environment Created!"
fi

sudo chmod -R 777 env
source env/bin/activate
echo "Virtual env activated"

echo "Installing Project Requirements"
pip3 install -r requirements.txt

if [ -d "logs" ] 
then
    echo "Log folder exists." 
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
