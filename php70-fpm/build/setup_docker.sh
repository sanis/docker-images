#!/bin/bash

set -x
set -e

apt-get update
apt-get install -y --no-install-recommends php7.0-fpm

# remove php modules
rm -f /etc/php/7.0/fpm/conf.d/*


cp -frv /build/files/* /


# Clean up APT when done.
source /usr/local/build_scripts/cleanup_apt.sh

