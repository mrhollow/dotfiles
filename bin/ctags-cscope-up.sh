#!/bin/bash

FILE_LIST='cscope.files'    # This is the default source file for cscope

if [ ! -d $1 ]; then
    echo "Usage: $0 [<src_dir>]"
    echo " If no src dir supplied, attempts to update tags/cscope db using an already built cscope.files list in the current directory"
    exit 1
fi

if [ "$#" -gt 0 ]; then
    ROOT=("$@")
else
    ROOT=('.')
fi

echo "" > $FILE_LIST
for D in "${ROOT[@]}"; do
    if [ ! -z $D ]; then
        echo "Finding source files in '$D'..."
        # Find all .c, .h, .pl, .cpp, .l, .y, .py (and some others...)
        # find $D -type f -regex ".*[.][pchly][ylpx]?[px]?" | grep -v "isilon/lib/python/build" | sed 's/ /\\ /g' > $FILE_LIST
        # find $D -type f -regex ".*[.][pchlyi][ylpxn]?[px]?" >> $FILE_LIST
        find $D -type f -regex ".*[.][chi][pxn]?[px]?" >> $FILE_LIST
    else
        echo "No root supplied"
        exit 1
    fi
done

if [ -f $FILE_LIST ]; then
    # Build tags from files in list (cscope uses cscope.files by default)
    echo "Building ctags db..."
    ctags -f tags -L $FILE_LIST
    echo "Building cscope db..."
    cscope -b -R
else
    echo "No cscope.files list could be found, doing nothing."
fi
