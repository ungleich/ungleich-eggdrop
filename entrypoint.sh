#!/bin/sh

if [ -z "${NICK}" ]; then
    echo "You need to setup the NICK environment variable"
    exit 1
fi

# Reduce to a maximum of 6 characters and remove -
# which might be the leading character
# This leaves some space for the random characters
NICK=$(echo $NICK | tail -c 7 | sed 's/-//')

sed -i -e "s/MYNAME/$NICK/" /home/eggdrop/eggdrop.conf
su - eggdrop -c /home/eggdrop/eggdrop.sh
