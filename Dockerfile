FROM ubuntu

RUN apt-get -y update && sudo apt install apache2 && sudo apt install mysql-server && sudo apt install php libapache2-mod-php php-mysql

EXPOSE 80

CMD ["apache2","-g","daemon off;"]
