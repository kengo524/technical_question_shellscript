#!/bin/bash
DATE=`TZ=JST-9 date '+%Y年%m月%d日 %H時%M分'`
hour=`TZ=JST-9 date "+%H"`

# 12より小さい時の処理
if [ $hour -lt "12" ]; then
  ls -la >> time.txt # ls-laの内容をtime.txtにファイルを書き出す。
# 12以上の時の処理
elif [ $hour -ge "12" ]; then
  echo $DATE
fi
