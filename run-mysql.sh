# update dependences
sudo yum -y update

# clear yum cache
sudo yum clean all
sudo rm -rf /var/cache/yum

# MySQL for Amazon Linux
sudo yum -y install mysql57-server
sudo service mysqld start
sudo chkconfig mysqld on

# download confluence
sudo wget -r https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-6.14.1-x64.bin -0 atlassian-confluence-6.14.1-x64.bin

# run confluence installer
sudo ./atlassian-confluence-6.14.1-x64.bin
