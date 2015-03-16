To create a Drupal site:


docker run -v ($PWD)/output:/var/www raphabot/docker-factory $ADMIN_USERNAME $ADMIN_PASSWORD $DB_USERNAME $DB_PASSWORD $DB_URL $DB_PORT $DB_SCHEMA


The database must exist and any table on it will be dropped.
