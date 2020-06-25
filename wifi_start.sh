while [ 1 ];
do
	HOSTIP=`ifconfig wlan0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'`
	echo "WiFi HOST IP $HOSTIP"
done
