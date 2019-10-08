ct=0
mx=$(ls | grep "pdf" | wc -l)
nodes=32
each=$((mx/nodes))
echo $each
for i in `seq $nodes`; do 
	bash subfind.sh "$1" "$i" "$each"
done
sleep 1000
for i in `ls . | grep pdf` ; do 
	count=$(pdfgrep -i ".*$1.*" $i | wc -l) 
	if [ "${count}" -gt 0 ] ; then 
		echo $i 
	fi
	ct=$((ct+1))
	>&2 echo -en "\r${ct}/${mx}"
done
