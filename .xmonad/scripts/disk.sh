#!/bin/sh

percentage=$(df -hT | grep /$ | awk '{ print $6 }' 2>/dev/null)
percentage="♻️   ${percentage}"
if [[ $? == 0 ]]; then
	echo $percentage
else
	printf '\e[31m%s\e[0m' "invalid"
fi
