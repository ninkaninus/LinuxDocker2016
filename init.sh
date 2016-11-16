#! /bin/bash

docker run -dit -p 80:80 --name apache -h apache ninkaninus/apache
docker run -dit -p 3306:3306 --name mariadb -h mariadb ninkaninus/mariadb
