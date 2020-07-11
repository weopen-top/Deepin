#!/bin/bash
cd /home/jxc/Documents/$1
git add .
git commit -m "$HOSTNAME `date +"%Y-%m-%d %T"`"
git push
