
composer install

sudo su
find . -type d -exec chmod 0775 {} \; ; sudo find . -type f -exec chmod 0664 {} \; ; sudo find . -name data -type d -exec chmod 0770 {} \; ; chown -R $USER:www-data .;
