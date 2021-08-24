#! /bin/bash

colno="$1"
old="$2"
new="$3"

while read line 
do
  if [[ $line =~ .*"$old".* ]]
  then
    echo ${line/$old/$new} 
  else
    echo $line
  fi
done < merged.txt > merged.txt.t 
mv merged.txt{.t,}
