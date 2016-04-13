#!/bin/bash

if [ -z $1 ] || [ $(($1<1)) -eq 1 ]; then
    echo "First arg must be 1 or greater."
    exit 1
fi

GITDROP=`git stash list | cut -d: -f1 | tail -$1 | sort -r`

echo "Going to drop the following stashes (hit ctrl-c if this isn't what you intended):"
echo "$GITDROP"

for C in `seq 10`; do
    echo -n "."
    sleep 0.7
done

echo
for I in $GITDROP; do
    git stash drop $I
done
