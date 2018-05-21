#!/bin/bash

# This script expands an ip address listed as: X.X.X.X-Y to all addresses from X.X.X.X through X.X.X.Y

# Match the pattern listed above (X.X.X.X-Y)
if ! echo "$1" | grep -q "^[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}-[0-9]\{1,3\}$" ; then
    echo "Usage: $0 <ip address like: X.X.X.X-Y>"
    exit
fi

# Split $1 into an array
declare -a OCTETS=(`echo $1 | sed 's/[.-]/\ /g'`)

COUNT=0
CHECKED=""
for OCT in ${OCTETS[@]}; do
    if [ $COUNT -lt 1 ]; then
        CHECKED="$OCT"
    elif [ $COUNT -lt 4 ]; then
        CHECKED="$CHECKED.$OCT"
    else
        CHECKED="$CHECKED-$OCT"
    fi
    if [ $OCT -gt 254 ]; then
        echo "$CHECKED <-- Invalid octet value, should be less than 254."
        exit
    fi
    COUNT=$((COUNT+1))
done

FROM=${OCTETS[3]}
TO=${OCTETS[4]}

RANGE=$((TO-FROM))
if [ $RANGE -le 0 ]; then
    echo "Invalid end range: $FROM-$TO, the second value ($TO) should be _greater_ than the first ($FROM)"
    exit
fi

LASTOCT=${FROM}
while [ $LASTOCT -le $TO ]; do
    echo "${OCTETS[0]}.${OCTETS[1]}.${OCTETS[2]}.$LASTOCT"
    LASTOCT=$((LASTOCT+1))
done
