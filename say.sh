#!/bin/bash

#今の時間言わせるsayコマンド
#say `date +"%I"` 時 `date +"%M"` 分です


#ごはん
if test `date +"%I"` -eq 12;
  then
  if test `date +"%M"` -eq 00;
    then
      #メニューの配列をインポート
      source ./menu_array
      #言わせる言葉
      KOTOBA="gohan no z kkun death, ${menu_array[$menu_random_num]} tabeyo"
      KOTOBA1="gohan no z kkun death,"
      KOTOBA2="${menu_array[$menu_random_num]}"
      KOTOBA3="tabeyo"
      osascript -e 'set Volume 4'
      say -v Alex $KOTOBA1
      osascript -e 'set Volume 6'
      say -v Alex $KOTOBA2
      osascript -e 'set Volume 4'
      say -v Alex $KOTOBA3
  fi
fi

#うなじ
if test `date +"%I"` -eq 16;
  then
  if test `date +"%M"` -eq 00;
    then
    say -v Alex This is wunagi time
    say -v Lets play wunagi
    open -a /Applications/Google\ Chrome.app http://eelslap.com/
  fi
fi

#おはよう
#10:00~10:59までにmacを開くとあいさつを行う
if test `date +"%I"` -eq 10;
  then
  source ./hello_status
  if test $said_hello -eq 0;
    then
    say -v Alex hello
    echo said_hello=1 > ./hello_status
  fi
then
#おはようフラグをリセット
#12:00におはようフラグをoff（0）にする
if test `date +"%I"` -eq 12;
  then
  if test `date +"%M"` -eq 00;
    then
    echo said_hello=0 > ./hello_status
  fi
fi
