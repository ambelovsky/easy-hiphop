#!/bin/bash -e
shopt -q
#####################################
# Facebook HipHop PHP Uninstaller   #
# Written For Ubuntu 12.04          #
#####################################
# Author: Aaron Belovsky            #
# URL:    AaronBelovsky.com         #
# GitHub: github.com/ambelovsky     #
#####################################

UBUNTU_VERSION='12.04'
LIBEVENT_VERSION='1.4.14'
LIBCURL_VERSION='7.21.2'
LIBMEMCACHED_VERSION='0.49'

DEV_PREFIX_PATH='/home/dev'


## Introduce

echo ""
echo "SUDO OR RUN THIS SCRIPT AS ROOT"
echo ""
echo "This script will uninstall HipHop-PHP on Ubuntu $UBUNTU_VERSION"
echo ""


## Cleanup old files

echo "Cleaning up any old files."
rm -rf ${DEV_PREFIX_PATH}/hiphop-php \
	${DEV_PREFIX_PATH}/libevent-${LIBEVENT_VERSION}b-stable \
	${DEV_PREFIX_PATH}/libevent-${LIBEVENT_VERSION}b-stable* \
	${DEV_PREFIX_PATH}/curl-${LIBCURL_VERSION} \
	${DEV_PREFIX_PATH}/curl-${LIBCURL_VERSION}* \
	${DEV_PREFIX_PATH}/libmemcached-${LIBMEMCACHED_VERSION} \
	${DEV_PREFIX_PATH}/libmemcached-${LIBMEMCACHED_VERSION}* \
	/usr/bin/hphp \
	/usr/bin/hhvm


## Success
echo "HipHop-PHP has been removed!"
exit
