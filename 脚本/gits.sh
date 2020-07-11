#!/bin/bash
case $1 in
-l)
    cd $HOME/Documents/$2
    git pull;;
-s)
    cd $HOME/Documents/$2
    git add .
    git commit -m "$HOSTNAME `date +"%Y-%m-%d %T"`"
    git push;;
*)
    echo "格式 $0 选项 参数"
    echo "  -l      拉取"
    echo "  -s      推送";;
esac
