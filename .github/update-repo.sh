#!/bin/bash
status_log=$(git status -sb)
# 这里使用的是 main 分支，根据需求自行修改
if [ "$status_log" == "?? subconverter.tar.gz?? subconverter/" ];then
  echo "nothing to commit, working tree clean"
else
  git add long&&git add Clash.yaml&&git commit -m "$(date '+%Y.%m.%d %H:%M:%S')更新订阅"&&git push origin main
fi
