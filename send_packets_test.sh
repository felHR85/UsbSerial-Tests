#!bin/bash

# Testsuite for UsbSerial
#
# This test generates a number of files specified by the user and send them through the serial port.
#
# args:
#      -p: serial port (ttyUSB0, ttyUSB1..)
#      -t: number of times this test will be repeated
#      -s: size of the random files generated for testing purposes

while getopts p:t:s: OPTION;
do
case $OPTION 
	in
	p)      PORT=$OPTARG;;
        t)	TIMES=$OPTARG;;
	s) 	SIZE=$OPTARG;;
esac
done

for i in $(seq 1 $TIMES);
do	
        dd if=/dev/urandom of=$i bs=$SIZE count=1 status=none
	echo "Temp file $i was created"
	#TODO
done

echo "$TIMES"
echo "size: $SIZE"
	



