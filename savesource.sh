#!/bin/bash
DATE=`date '+%Y%m%d%H%M%S'`
LINE=$(head -n 1 ./links.dat)
/usr/local/bin/phantomjs ./download.js "$LINE" > "./cache/$DATE".html
echo "$(tail -n +2 ./links.dat)" > ./links.dat
