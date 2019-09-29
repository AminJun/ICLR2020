ct=0
for i in `ls . | grep pdf` ; do 
	count=$(pdfgrep -i ".*$1.*" $i | wc -l) 
	if [ "${count}" -gt 0 ] ; then 
		echo $i 
	fi
	ct=$((ct+1))
	>&2 echo $ct
done
