#!/bin/bash
threads=$(cat /proc/cpuinfo | grep -c "^processor" )
while true;
do
  ./minerd --algo scrypt -s 45 --retry-pause 5 --threads $threads --url http://lc.ozco.in:9332 --userpass funtoo.public:p
done
