#! /bin/bash

n=$(grep ".*$" --count ${1})

if [[ $((${n} % 2)) -eq 0 ]]
then
	head -n $((${n} / 2)) ${1} | tail -n 1
else
	head -n $((${n} / 2 + 1)) ${1} | tail -n 1
fi
