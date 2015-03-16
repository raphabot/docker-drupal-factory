To create a Drupal site:


docker run -v $DESIRED_OUTPUT_DIR:/var/www raphabot/docker-factory $ADMIN_USERNAME $ADMIN_PASSWORD $DB_USERNAME $DB_PASSWORD $DB_URL $DB_PORT $DB_SCHEMA


Example:


docker run -v /home/nice_user/drupal/output/:/var/www/ raphabot/drupal-factory admin crazy_password db_user db_pass 123.123.123.123 3306 drupal_db

The database must exist and any table on it will be dropped.
