#!/bin/bash
cd /home/jxc/Documents/$1
git add .
git commit -m "`date +"%Y-%m-%d %T"`"
git push
