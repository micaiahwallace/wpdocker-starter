#!/bin/bash

printf "Enter the following environment variables\n\n"
read -sp 'mysql root password:' rootpass
echo
read -p 'mysql user username:' dbusername
read -sp 'mysql user password:' dbpassword
echo
read -p 'mysql db name:' dbname

echo "MYSQL_ROOT_PASSWORD=$rootpass" > .env
echo "MYSQL_DATABASE=$dbname" >> .env
echo "MYSQL_USER=$dbusername" >> .env
echo "MYSQL_PASSWORD=$dbpassword" >> .env
echo "WORDPRESS_DB_HOST=db" >> .env
echo "WORDPRESS_DB_USER=$dbusername" >> .env
echo "WORDPRESS_DB_PASSWORD=$dbpassword" >> .env
echo "WORDPRESS_DB_NAME=$dbname" >> .env