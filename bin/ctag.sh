#!/bin/bash

ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -f $2 $1 
