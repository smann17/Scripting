#baton-rouge
#! /bin/bash

date >>~/now
#echo -n ", ">>~/now

ps -e h | wc -l >>~/now

users | wc -w >>~/now

let a=`free | sed '2q;d' | cut -c12-20`
#echo $a #>>~/now

b=`free | sed '2q;d' | cut -c24-31`
#echo $b #>>~/now

answer=`bc <<< "scale=5;($b/$a)*100"`
echo $answer >>~/now
