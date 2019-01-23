CHARS=$(wc ./files/nmea -c | awk '{ print $1}')
POS=1

echo $CHARS
while [$CHARS -ge $POS];
do
	$RAND=$(shuf -i1-10 -n1)
	$POS=$(($POS + $RAND))
	#TODO




done











