#!/bin/bash

# source env/bin/activate

echo "Starting Service shell..."

cd /home/ubuntu/Tech_Blog

python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py collectstatic --no-input

echo "Migrations done"
echo "Starting Gunicorn Service..."


sudo cp -rf /home/ubuntu/exec/gunicorn.service /etc/systemd/system/

echo "$USER"
echo "$PWD"

sudo systemctl daemon-reload
sudo systemctl start gunicorn

echo "Gunicorn has started."

sudo systemctl enable gunicorn

echo "Gunicorn has been enabled."

sudo systemctl restart gunicorn
#sudo systemctl status gunicorn

#echo "Starting Nginx Service..."

#sudo cp -rf /home/ubuntu/exec_scripts/hairsalonapp.conf /etc/nginx/sites-available/hairsalon
#chmod 777 /home/ubuntu/Devops

#sudo ln -s /etc/nginx/sites-available/hairsalon /etc/nginx/sites-enabled
#sudo nginx -t

#sudo rm /etc/nginx/sites-enabled/default

#sudo systemctl start nginx
#sudo systemctl enable nginx

#echo "Terraform running ufw " 
#sudo ufw allow 80
#sudo ufw allow 'Nginx Full'
#sudo ufw allow 443
#sudo ufw allow 5000
#sudo ufw deny 8000

#echo "Nginx has been started"

#sudo systemctl status nginx

#sudo systemctl restart nginx

echo "Terraform running " 
