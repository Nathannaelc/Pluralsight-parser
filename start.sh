mv pluralsight2.txt pluralsight.txt
tidy -q -i -m --wrap 160 -ashtml -utf8 pluralsight.txt 2>/dev/null
grep '<a href="/library' pluralsight.txt >> pluralsight2.txt
mv pluralsight2.txt pluralsight.txt
sed -i -e "s/<span.*\<a href=\"//" pluralsight.txt
sed -i "s/\".*/ /" pluralsight.txt
sed -i -e 's/\s\+//g' pluralsight.txt
sed -i 's/^/https\:\/\/app\.pluralsight\.com/' pluralsight.txt
awk '!seen[$0]++' pluralsight.txt >> pluralsight2.txt
mv pluralsight2.txt pluralsight.txt
