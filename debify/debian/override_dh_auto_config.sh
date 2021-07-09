#!/bin/bash

source debian/vars.sh

set -x

/opt/cpanel/ea-php73/root/usr/bin/phpize

echo "CONFIGURE"
cat -n configure
echo "CONFIGURE END"

./configure \
    --with-php-config=/opt/cpanel/ea-php73/root/usr/bin/php-config

make

