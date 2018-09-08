apt install apache2
sudo add-apt-repository ppa:ondrej/php
apt-get -y update && apt-get -y upgrade
apt-get install -y php7.1 php7.1-fpm php7.1-cli php7.1-json php7.1-curl php7.1-imap php7.1-gd php7.1-mysql php7.1-xml php7.1-zip php7.1-intl php7.1-mcrypt php-imagick php7.1-mbstring software-properties-common unzip  redis-server php7.1-redis imagemagick ffmpeg zip php7.1-gd -y
sudo apt-get install libapache2-mod-php7.1
cp apache2.conf /etc/apache2
cp 000-default.conf /etc/apache2/sites-available
rm apache2.conf 000-default.conf
/etc/init.d/apache2 restart
chmod 777 -R /usr/local/caddy/www