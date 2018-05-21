#!/usr/bin/env bash

vim `git status -suno | grep "^ M" | awk '{print $2}'`
