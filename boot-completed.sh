delay=5 #in seconds
while :
do
    setenforce 1 #set it to '0' to make SELinux 'permissive' to apply it reboot!
    sleep $delay
done
