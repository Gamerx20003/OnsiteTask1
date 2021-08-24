#! /bin/bash

echo "The column parameters are name , employeeid , phone , salary , mail , year"

colname="$1"
old="$2"
new="$3"

if [ "$colname" == "name" ]
  then 
    while read line 
    do
     fin=$(cut -d',' -f 1 <<<$line)
     if [ "$fin" = "$old" ]
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
    fin=$(cut -d',' -f 2 <<<$line)
     if [ "$fin" = "$old" ]
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
      fin=$(cut -d',' -f 3 <<<$line)
      if [ "$fin" = "$old" ]
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
     fin=$(cut -d',' -f 4 <<<$line)
     if [ "$fin" = "$old" ]
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
     fin=$(cut -d',' -f 5 <<<$line) 
     if [ "$fin" = "$old" ]
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
     fin=$(cut -d',' -f 6 <<<$line)
     if [ "$fin" = "$old" ]
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








