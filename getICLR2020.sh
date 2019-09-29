#!/bin/bash

for i in `seq 0 50 2551`; do 
curl "https://openreview.net/notes?invitation=ICLR.cc%2F2020%2FConference%2F-%2FBlind_Submission&details=replyCount%2Coriginal&offset=${i}&includeCount=false&limit=50" -H 'Sec-Fetch-Mode: cors' -H 'Sec-Fetch-Site: same-origin' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-US,en;q=0.9,fa;q=0.8' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Referer: https://openreview.net/group?id=ICLR.cc/2020/Conference' -H 'X-Requested-With: XMLHttpRequest' -H 'Cookie: _ga=GA1.2.716157083.1569622365; _gid=GA1.2.11539978.1569622365; _gat_gtag_UA_108703919_1=1' -H 'Connection: keep-alive' --compressed ;
done 
