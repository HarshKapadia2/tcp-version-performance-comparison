#!/bin/bash

DST=$1

touch sender-ss.txt

rm -f sender-ss.txt 

# convert to Kilo (K)
# Eg: 21.2M = 21200
# Eg: 21.2K = 21.2
convertToKilo()
{
  sed '
      s/\([0-9][0-9]*\(\.[0-9]\+\)\?\)K/\1*1/g;
      s/\([0-9][0-9]*\(\.[0-9]\+\)\?\)M/\1*1000/g;
      s/\([0-9][0-9]*\(\.[0-9]\+\)\?\)G/\1*1000000/g;
      s/\([0-9][0-9]*\(\.[0-9]\+\)\?\)T/\1*1000000000/g;
      s/\([0-9][0-9]*\(\.[0-9]\+\)\?\)P/\1*1000000000000/g;
      s/\([0-9][0-9]*\(\.[0-9]\+\)\?\)E/\1*1000000000000000/g
  ' </dev/stdin | bc
}

cleanup()
{
	# get timestamp
	ts=$(cat sender-ss.txt | sed -e ':a; /<->$/ { N; s/<->\n//; ba; }' | grep "ESTAB" | grep "unacked" | awk '{print $1}')

	# get sender
	sender=$(cat sender-ss.txt | sed -e ':a; /<->$/ { N; s/<->\n//; ba; }' | grep "ESTAB" | grep "unacked" | awk '{print $6}')
	
    # get delivery rate (throughput)
	tput=$(cat sender-ss.txt | sed -e ':a; /<->$/ { N; s/<->\n//; ba; }' | grep "ESTAB" | grep "unacked" | grep -oP '\bpacing_rate.*\bbusy:' | awk -F '[bps ]' '{print $8}' | tr -d ' ')
	tput=$(echo $tput | convertToKilo)

	# get rtt
	rtt=$(cat sender-ss.txt | sed -e ':a; /<->$/ { N; s/<->\n//; ba; }' | grep "ESTAB" | grep "unacked" | grep -oP '\brto:.*\bmss' | awk -F '[:/ ]' '{print $4}' | tr -d ' ')

	# get retransmissions - current, total
	retr=$(cat sender-ss.txt | sed -e ':a; /<->$/ { N; s/<->\n//; ba; }' | grep "ESTAB" | grep "unacked" | grep -oP '\bunacked:.*\brcv_space' | awk -F '[:/ ]' '{print $4","$5}' | tr -d ' ')

	# get cwnd, ssthresh
	cwnd_ssthresh=$(cat sender-ss.txt | sed -e ':a; /<->$/ { N; s/<->\n//; ba; }' | grep "ESTAB" | grep "unacked" | grep -oP '\bcwnd:.*(\s|$)\bbytes_acked' | awk -F '[: ]' '{print $2","$4}')

	# concatenate into one CSV
	paste -d ',' <(printf %s "$ts") <(printf %s "$sender") <(printf %s "$tput") <(printf %s "$rtt") <(printf %s "$retr") <(printf %s "$cwnd_ssthresh") > sender-ss.csv

	exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]; do 
	ss --no-header -ein dst $DST | ts '%.s' | tee -a sender-ss.txt 
done
