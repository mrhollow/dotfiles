#!/bin/bash

DIR=~/git/arduino/projects

if [ -z $1 ]; then
    echo "Usage: $0 <name>"
    echo "    Places the folder/file in $DIR"
    exit 1
fi

FILE=$(basename $1)
REAL_DIR=$DIR/$FILE
REAL_FILE=$REAL_DIR/$FILE.ino

if [ -d $REAL_DIR ]; then
    echo "$REAL_DIR already exists! Aborting!"
    exit 1
fi

mkdir -p $REAL_DIR

if [ -d $REAL_DIR ]; then
#####
cat <<EOF > $REAL_FILE
void
setup()
{
}

void
loop()
{
}
EOF
echo "$REAL_FILE created!"
#####
else
    echo "Error, aborting!"
    exit 1
fi

exit 0
