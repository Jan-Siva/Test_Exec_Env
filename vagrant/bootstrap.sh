export DEBIAN_FRONTEND=noninteractive
debconf-set-selections <<< "mysql-server mysql-server/root_password password"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password"

apt-get update -y
apt-get install lamp-server^ gcc imagemagick php5-imagick git nodejs npm openjdk-7-jre-headless -y

update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

# Install phantomjs
if [ -d "/usr/local/lib/node_modules/phantomjs" ]; then
  echo "phantomjs already installed, skipping"
else
  echo "installing phantomjs"
  npm install -g phantomjs
fi

# Install the phantomjs init script
cp /vagrant/test_exec_env/vagrant/phantomjs /etc/init.d/
chmod a+x /etc/init.d/phantomjs
update-rc.d phantomjs defaults

# Start the phantomjs service
service phantomjs start