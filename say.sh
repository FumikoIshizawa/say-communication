#!/bin/bash
#say-communicationのディレクトリを指定
cd /Users/antibitch/Documents/job_hunting/internship/say-communication


source ./config

#ごはん
if test `date +"%H"` -eq `echo $TIME_GOHAN|cut -d":" -f1`;
  then
  if test `date +"%M"` -eq `echo $TIME_GOHAN|cut -d":" -f2`;
    then
      #メニューの配列をインポート
      source ./menu_array
      #ごはんの乱数
      menu_array_size=`expr ${#menu_array[*]} - 1`;
      menu_random_num=`jot -r 1 0 $menu_array_size`

      #言わせる言葉
#      KOTOBA="gohan no z kkun death, ${menu_array[$menu_random_num]} tabeyo"
      KOTOBA1="gohan no z kkun death,"
      KOTOBA2="${menu_array[$menu_random_num]}"
      KOTOBA3="tabeyo"
      osascript -e 'set Volume 4'
      say -v $SPEAKER $KOTOBA1
      osascript -e 'set Volume 5'
      say -v $SPEAKER $KOTOBA2
      osascript -e 'set Volume 4'
      say -v $SPEAKER $KOTOBA3
      URL="http://google.co.jp/search?q=${menu_array[$menu_random_num]}"
      open -a /Applications/Google\ Chrome.app $URL
  fi
fi

#うなじ
if test `date +"%H"` -eq `echo $TIME_UNAGI|cut -d":" -f1`;
  then
  if test `date +"%M"` -eq `echo $TIME_UNAGI|cut -d":" -f2`;
    then
    say -v $SPEAKER This is wunagi time
    say -v Lets play wunagi
    open -a /Applications/Google\ Chrome.app http://eelslap.com/
  fi
fi

#おはよう
#10:00~10:59までにmacを開くとあいさつを行う
if test `date +"%H"` -eq `echo $TIME_OHAYO|cut -d":" -f1`;
  then
  source ./hello_status
  if test $said_hello -eq 0;
    then
    say -v $SPEAKER hello
    echo said_hello=1 > ./hello_status
  fi
fi

#おはようフラグをリセット
#12:00におはようフラグをoff（0）にする
if test `date +"%H"` -eq 12;
  then
  if test `date +"%M"` -eq 00;
    then
    echo said_hello=0 > ./hello_status
  fi
fi
