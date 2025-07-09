#!/bin/bash

set -e

isExistApp="$(pgrep httpd)"
if [[ -n $isExistApp ]]; then
sudo systemctll stop httpd.service
fi
isExistApp="$(pgrep tomcat)"
if [[ -n $isExistApp ]]; then
sudo systemctll stop tomcat.service
fi

exit 1