#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/bin:/sbin
export PATH

function update_tracker(){
	wget -O /tmp/trackers_best.txt https://api.xiaoz.org/trackerslist/
	tracker=$(cat /tmp/trackers_best.txt)
	tracker="bt-tracker="${tracker}
	sed -i '/bt-tracker.*/'d /etc/aria2.conf
	echo ${tracker} >> /etc/aria2.conf
}

update_tracker