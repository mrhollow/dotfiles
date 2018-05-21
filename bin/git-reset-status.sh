#!/usr/bin/env bash

for F in `git status -s -uno | awk '{print $2}'`; do
    echo $F
    git checkout $F
done
