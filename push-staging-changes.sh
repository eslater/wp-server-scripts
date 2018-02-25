#!/bin/bash

volumePath=$(docker volume inspect --format '{{ .Mountpoint }}' root_demo_site)
rsync -av "$volumePath/wp-content" /root/500rockets-main-site/

docker exec root_mariadb_1 /bin/sh -c 'mysqldump -u demo_user -ppassword demo_db > initdata.sql'
docker cp root_mariadb_1:/initdata.sql /root/500rockets-main-site/initdata.sql

read -p "Do you want to proceed? (Y|N) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	cd /root/500rockets-main-site
	git add -A .
	git commit -m "changes from staging"
	git push origin master
	cd /root
fi
