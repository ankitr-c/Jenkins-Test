sudo apt install git -y
sudo apt-get install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
sudo rm -rf /var/www/html
sudo rm -rf /var/www
sudo mkdir -p /var/www/html
sudo cp /var/lib/jenkins/workspace/multibranch_demo_main/Jenkins-Test/index.html /var/www/html
