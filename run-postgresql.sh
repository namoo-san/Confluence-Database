# update dependences
sudo yum -y update

# clear yum cache
sudo yum clean all
sudo rm -rf /var/cache/yum

# PostgreSQL
sudo yum localinstall -y https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-6-x86_64/pgdg-ami201503-96-9.6-2.noarch.rpm
rpm -ql pgdg-ami201503-96-9.6-2.noarch
sudo yum install -y postgresql96 postgresql96-server postgresql96-libs postgresql96-contrib
sudo /etc/init.d/postgresql96 initdb
sudo /etc/init.d/postgresql96 start
sudo chkconfig postgresql96 on

# check db start
sudo -u postgres -i psql -c 'SELECT version();'

# download confluence
sudo wget -r https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-6.14.1-x64.bin -0 atlassian-confluence-6.14.1-x64.bin

# run confluence installer
sudo ./atlassian-confluence-6.14.1-x64.bin
