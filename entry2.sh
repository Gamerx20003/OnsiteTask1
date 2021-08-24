#! /bin/bash

echo "The column parameters are name , employeeid , phone , salary , mail , year"

colname="$1"
old="$2"
new="$3"



IFS=","

if [ "$colname" == "name" ]
  then 
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
    
elif [ "$colname" == "employeeid" ]
  then
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
  

elif [ "$colname" == "phone" ]
  then
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
  
elif [ "$colname" == "salary" ]
  then
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
  
elif [ "$colname" == "mail" ]
  then  
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
    
elif [ "$colname" == "year" ]
  then
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
      
else
  echo "Wrong parameters entered" 
fi   








