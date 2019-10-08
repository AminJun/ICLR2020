#!/bin/bash
source getICLR2020.sh > index.txt 
cat index.txt | grep -oh "\"replyCount\"\:[0-9]*" | sed 's/\"replyCount\"\://g' > count.txt
cat index.txt | grep -oh "\"pdf\"\:\"\/pdf\/[[:alnum:]]*\.pdf"  | sed 's/.*\///g' > pdf_list.txt
paste -d ' ' count.txt pdf_list.txt > count_list.txt
cat count_list.txt | sort -rh > sorted.txt
head -n 20 sorted.txt
