sudo apt install git -y
sudo apt-get install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
sudo rm -rf /var/www/html
sudo rm -rf /var/www
sudo mkdir -p /var/www/html
sudo git clone https://github.com/ankitr-c/Jenkins-Test.git /var/www/html
