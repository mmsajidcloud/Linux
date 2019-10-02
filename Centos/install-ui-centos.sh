#/bin/bash
yum install epel-release
yum groupinstall "Server with GUI" -y
systemctl isolate graphical.target
systemctl set-default graphical.target 
sudo yum -y install xrdp
sudo systemctl enable xrdp
sudo service xrdp restart

# Installing Google chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo yum install google-chrome-stable_current_x86_64.rpm

#install python 3
sudo yum install python3
sudo yum install python3-pip
# installed selenium
pip3 install selenium