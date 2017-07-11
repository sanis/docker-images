#!/bin/bash

set -x
set -e

apt-get update
apt-get install -y --no-install-recommends gearman


cp -frv /build/files/* /


# Clean up APT when done.
source /usr/local/build_scripts/cleanup_apt.sh
