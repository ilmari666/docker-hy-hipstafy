#!/bin/sh

inputfile="${1##*/}"
curl -s -o $inputfile $1
outpufile=
mkdir -p output
outputfile="output/"$inputfile
echo "converting $inputfile to $outputfile"
if file "$inputfile" | grep -qE 'image|bitmap'
    then
        convert -sepia-tone 60% +polaroid "./$inputfile" "$outputfile"
        rm $inputfile
        exit 0 
    else
        echo "Exiting no image file found"
        rm $inputfile
        exit 1
fi
 echo "Usage hipstafy.sh <imageurl>"
 exit 0
