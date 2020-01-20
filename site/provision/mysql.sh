#!/usr/bin/env bash

sudo mysql -u root -proot -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('root_password');"
sudo service mysql restart
sudo mysql -u root -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'test_user'@'localhost' IDENTIFIED BY 'user_password'; CREATE DATABASE test_base; USE test_base; CREATE TABLE test_table ( id smallint unsigned not null auto_increment, name varchar(20) not null, constraint pk_example primary key (id) ); INSERT INTO test_table ( id, name ) VALUES ( null, 'Test data' );"
