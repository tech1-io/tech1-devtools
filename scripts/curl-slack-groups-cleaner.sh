#!/usr/bin/env bash

echo "======================="
echo "Cleanup: [started]"
echo "Slack Token: " + $SLACK_TOKEN
echo "Groups: $1"
echo "======================="

for item in $1
do 
	echo "======================="
	echo "Cleanup, group = #$item: [started]"
	echo "======================="
	slack-cleaner --token $SLACK_TOKEN --message --group "$item" --user "*"
	echo "======================="
	echo "Cleanup, group = #$item: [perform]"
	echo "======================="
	slack-cleaner --token $SLACK_TOKEN --message --group "$item" --user "*" --rate 1 --perform
	echo "======================="
	echo "Cleanup, group = #$item: [completed]"
	echo "======================="

	read -p "Press enter to continue"
done

echo "===================================="
echo "Cleanup, group = #general: [started]"
echo "===================================="
#slack-cleaner --token $SLACK_TOKEN --message --channel general --user "*" 
echo "===================================="
echo "Cleanup, group = #general: [perform]"
echo "===================================="
#slack-cleaner --token $SLACK_TOKEN --message --channel general --user "*" --rate 1 --perform
echo "===================================="
echo "Cleanup, group = #general: [completed]"
echo "===================================="

read -p "Press enter to continue"

echo "====================" 
echo "Cleanup: [completed]"
echo "===================="