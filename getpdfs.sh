#!/bin/bash
cat index.txt | grep -oh "\"pdf\"\:\"\/pdf\/[[:alnum:]]*\.pdf" | sed 's/.*\"//g' | while read pdf ; do 
	name=$(echo $pdf | sed 's/.*\///g')
	if [ ! -f "${name}" ] ; then 
 		curl "https://openreview.net${pdf}" -o "${name}"
		fi
done
