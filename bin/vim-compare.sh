#!/bin/bash

if [ -z $1 -o -z $2 -o -z $3 ]; then
    echo "Usage: $0 <path-one> <path-two> <file>"
    exit 1
fi

FILE=$3
ONE=$1
TWO=$2

F1=`find $ONE -name $FILE`
F2=`find $TWO -name $FILE`

if [ -z $F1 -o -z $F2 ]; then
    echo "Not found: $F1, $F2."
    exit 1
fi

echo "Found: $F1, and: $F2"

if ! diff -q $F1 $F2; then
    vimdiff $F1 $F2
else
    echo "No differences found"
fi


