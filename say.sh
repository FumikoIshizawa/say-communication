#!/bin/bash

#とりあえずてすとこーど

#言わせる言葉
KOTOBA="gohan no jikan death"

say `date +"%I"` 時 `date +"%M"` 分です

#macのボリュームを0~7で指定
osascript -e 'set Volume 4'

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

