#!/bin/bash

composer install

find . -type d -exec chmod 0775 {} \; ; find . -type f -exec chmod 0664 {} \; ; find . -name data -type d -exec chmod 0770 {} \; ; chown -R $USER:www-data .;

echo "Feito! De boa na lagoa!"
