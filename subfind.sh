#!/bin/bash
ct=0
each="$3"
ind="$2"
first=$(($each*$ind))
mx=$(ls . | grep pdf | wc -l)

ls . | grep pdf | head -n "$first" | tail -n "$each" | wc -l

#for i in `ls . | grep pdf` ; do 
#	count=$(pdfgrep -i ".*$1.*" $i | wc -l) 
#	if [ "${count}" -gt 0 ] ; then 
#		echo $i 
#	fi
#	ct=$((ct+1))
#	>&2 echo -en "\r${ct}/${mx}"
#done
