#!bin/bash
 
echo "Enter the file path"
read file
 
echo "Enter the file with timestamps path "
read timestamps
 
while IFS= read -r line; 
do 
echo "$line";
line=(${line// /});
arrIn=(${line//-/ });
 ffmpeg -i ${file} -ss ${arrIn[0]} -to ${arrIn[1]} -c copy "${arrIn[2]}" ;
done <"$timestamps"
