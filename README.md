# mysqldump

Usage :

If linked, take the env variables DB_NAME, DB_PASS and DB_USER from source container to feed it to this mysql-client container.

docker run --rm -ti --link=<your mysql container>:mysql iwdrepo/mysqldump

If not linked, pass it with the -e parameter

docker run --rm -ti -e DB_NAME=<> -e DB_PASS=<> -e DB_USER=<> iwdrepo/mysqldump
