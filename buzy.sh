#/usr/bin/env bash

time=$(date -d "2021-7-11 00:00:00" "+%s")

for (( i=0 ; i < 365 ; i=i+1 )); do
  for (( j=0 ; j < 20 ; j=j+1 )); do
    echo hi >> hi.txt
    d=$(($time + $j * 60))
    GIT_COMMITER_DATE=$d GIT_AUTHOR_DATE=$d git commit -am hi
  done
  time=$((time + 3600 * 24))
done
