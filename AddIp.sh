echo "OnLine IP adresses: " > online_ip.txt
echo "OffLine IP adresses: " > offline_ip.txt

addrip=10.93.161.45
base=${addrip:0:10}

for i in {0..255..1}
do
	if ping -W 1 -c 1 $base$i
	then echo $base$i >> online_ip.txt
	else echo $base$i >> offline_ip.txt
	fi
done

