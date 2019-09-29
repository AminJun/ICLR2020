ct=0
mx=$(ls | grep "pdf" | wc -l)
for i in `ls . | grep pdf` ; do 
	count=$(pdfgrep -i ".*$1.*" $i | wc -l) 
	if [ "${count}" -gt 0 ] ; then 
		echo $i 
	fi
	ct=$((ct+1))
	>&2 echo -en "\r${ct}/${mx}"
done
