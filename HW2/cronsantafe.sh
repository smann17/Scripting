#! /bin/bash

date >>~/now2
#echo -n ", ">>~/now

ps -e h | wc -l >>~/now2

users | wc -w >>~/now2

let a=`free | sed '2q;d' | cut -c12-20`
#echo $a #>>~/now

b=`free | sed '2q;d' | cut -c24-31`
#echo $b #>>~/now

answer=`bc <<< "scale=5;($b/$a)*100"`
echo $answer >>~/now2
