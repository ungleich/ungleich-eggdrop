#!/bin/sh

if [ -z "${NICK}" ]; then
    echo "You need to setup the NICK environment variable
    exit 1
fi

sed -i -e "s/MYNAME/$NICK/" /home/eggdrop/eggdrop.conf
su - eggdrop -c /home/eggdrop/eggdrop.sh
