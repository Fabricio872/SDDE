# Symfony Docker Development Enviroment
## Features
 - PHP
 - MariaDb
 - Phpmyadmin

## Installation
For installation clone project to somewhere where it can stay because in cloned directory is stored database data and phpmyadmin configuration. Then run `install.sh` with sudo rights.

## Php
call with comand you set with installation process

`note: php needs to be run with sudo if docker is also set to run with sudo`

to install aditional php packages you can access php container with `phpbash.sh` script and install them like in ubuntu 20.04 or before installation process you can edit Dockerfile file

## MariaDb
Port for MariaDb is 3306 and root password is `dbPassword` without quotes

## Phpmyadmin
To access open this link in browser: http://localhost:8080 and login with name `root` and password `dbPassword`
