#!/bin/sh
# wget https://raw.githubusercontent.com/obgp/Auto-Install/master/install.sh;chmod 777 install.sh;bash install.sh;
main() {
	clear;
	echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
	echo "Open Game Panel Installer"
	echo "For Ubuntu 18.04 only || by badiiiro || v0.1 beta"
	echo "- 1 -  Install Panel"
	echo "- 2 -  Install Agent"
	read -p "Select an option:" case
	case $case in
		1) panel;;
		2) agent;;
	esac
	echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "

}
panel()
{
sudo apt-get install apache2 curl subversion php7.2 php7.2-gd php7.2-zip libapache2-mod-php7.2 php7.2-curl php7.2-mysql php7.2-xmlrpc php-pear phpmyadmin mysql-server php7.2-mbstring php-gettext git php-bcmath;sudo mysql_secure_installation;wget -N "https://github.com/OpenGamePanel/Easy-Installers/raw/master/Linux/Debian-Ubuntu/ogp-panel-latest.deb" -O "ogp-panel-latest.deb"; sudo dpkg -i "ogp-panel-latest.deb";
clear;
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
echo "Once this is done, open the browser and go to http://{IP_OF_SERVER_OR_localhost}/index.php"
echo "Your OGP Datbase info:"
sudo cat /root/ogp_panel_mysql_info 
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
}
agent() {
sudo apt-get update;sudo apt-get upgrade;sudo apt-get install libxml-parser-perl libpath-class-perl perl-modules screen rsync sudo e2fsprogs unzip subversion libarchive-extract-perl pure-ftpd libarchive-zip-perl libc6 libgcc1 git curl;sudo apt-get install libc6-i386; sudo apt-get install libgcc1:i386; sudo apt-get install lib32gcc1; sudo apt-get install libhttp-daemon-perl;wget -N "https://github.com/OpenGamePanel/Easy-Installers/raw/master/Linux/Debian-Ubuntu/ogp-agent-latest.deb" -O "ogp-agent-latest.deb";sudo dpkg -i "ogp-agent-latest.deb";
clear;
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
echo "Your OGP Agent info:"
sudo cat /root/ogp_user_password
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
}
main