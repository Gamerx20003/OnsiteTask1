#! /bin/bash

echo "Enter the option number of column: 1.'name' 2.'employeeId' 3.'phone' 4.'salaries' 5.'email' 6.'year' "
read colno
((colno++))

echo "Enter parameter to replace:"
read old

echo "Enter parameter to replace it with:"
read new

while read line 
do
    echo ${line//$old/$new} 
done < merged.txt > merged.txt.t 
mv merged.txt{.t,}