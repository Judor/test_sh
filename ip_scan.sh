ip = 10.93.161
for i in {0..254}
do 
    if ping -W 1 -c 1 $ip.${i}; then
        ping -W 1 -c 1 ip.${i} >> online_hosts.txt

    else
        eping -W 1 -c 1 ip.${i} >> offline_hosts.txt
    fi
done
