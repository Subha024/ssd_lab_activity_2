#! /bin/bash

cat /etc/shells | grep -E "^/usr" | awk -F "/" '{print $4}'
