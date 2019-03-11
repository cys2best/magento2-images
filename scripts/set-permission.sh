#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
ROOT_PATH=/var/www/html
cd $ROOT_PATH

chmod 777 var generated pub -R

#find var vendor pub/static pub/media app/etc -type f -exec chmod u+w {} \;
#find var vendor pub/static pub/media app/etc -type d -exec chmod u+w {} \;
#find generated var/cache var/log -type d -exec chmod 777 {} \;
#find generated -type f -exec chmod 777 {} \;
chown www-data:www-data $ROOT_PATH -R