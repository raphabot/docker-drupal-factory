#!/bin/bash

ADMIN_USERNAME=$1
ADMIN_PASSWORD=$2
DB_USERNAME=$3
DB_PASSWORD=$4
DB_URL=$5
DB_PORT=$6
DB_SCHEMA=$7

cd /var
drush dl drupal
mv /var/drupal*/ /var/www/drupal/
chmod a+w /var/www/drupal/sites/default
mkdir /var/www/drupal/sites/default/files
chown -R www-data:www-data /var/www/
cd /var/www/drupal/
drush site-install standard -y --account-name=$ADMIN_USERNAME --account-pass=$ADMIN_PASSWORD --db-url="mysqli://$DB_USERNAME:$DB_PASSWORD@$DB_URL:$DB_PORT/$DB_SCHEMA"
