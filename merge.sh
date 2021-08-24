#! /bin/bash

touch merged.txt
echo ""

while read line
do
  name=$(cut -d',' -f 1 <<<$line)
  empid=$(cut -d',' -f 2 <<<$line)
  phone=$(cut -d',' -f 3 <<<$line)
  
  eid=$(cut -d',' -f 1 <<<$( grep "$empid" file2.txt | head -1))
  salary=$(cut -d',' -f 2 <<<$( grep "$empid" file2.txt | head -1))
  mail=$(cut -d',' -f 1 <<<$( grep "$phone" file3.txt | head -1))
  phone1=$(cut -d',' -f 2 <<<$( grep "$phone" file3.txt | head -1))
  year=$(cut -d',' -f 3 <<<$( grep "$phone" file3.txt | head -1))

echo "$name,$empid,$phone,$salary,$mail,$year" >> merged.txt
done < file1.txt

    

  
  

   