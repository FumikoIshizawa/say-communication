#!/bin/bash

#とりあえずてすとこーど


#menu
menu_array=(
"Hamburg"
)

#言わせる言葉
KOTOBA="gohan no jikan death"
KOTOBA=${menu_array[0]}
#say `date +"%I"` 時 `date +"%M"` 分です

#macのボリュームを0~7で指定
osascript -e 'set Volume 2'

#↓  alexがKOTOBAを言うところ
say -v Alex $KOTOBA



#osascript -e 'set Volume 7'
#say -v Alex Hamburg



#時間の分岐
if test `date +"%I"` -eq 12;
then
if test `date +"%M"` -eq 00;
then
say -v Alex gohan no jikan death
echo "aaaa";
fi
fi

#うなじ
if test `date +"%I"` -eq 13;
then
if test `date +"%M"` -eq 00;
then
say -v Alex This is wunagi time
say -v Lets play wunagi
open -a /Applications/Google\ Chrome.app http://eelslap.com/
fi
fi
