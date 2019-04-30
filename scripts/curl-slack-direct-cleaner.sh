#!/usr/bin/env bash

echo "======================="
echo "Cleanup: [started]"
echo "Slack Token: " + $SLACK_TOKEN
echo "Directs: $1"
echo "======================="

#read -p "Press enter to continue"

for item in $1
do 
	echo "======================="
	echo "Cleanup, direct = #$item: [started]"
	echo "======================="
	slack-cleaner --token $SLACK_TOKEN --message --direct "$item" --user "*"
	echo "======================="
	echo "Cleanup, direct = #$item: [perform]"
	echo "======================="
	slack-cleaner --token $SLACK_TOKEN --message --direct "$item" --user "*" --rate 2 --perform
	echo "======================="
	echo "Cleanup, direct = #$item: [completed]"
	echo "======================="
	
	read -p "Press enter to continue"
done

echo "=======================" 
echo "Cleanup: [completed]"
echo "======================="