#!/usr/bin/env bash

echo "======================="
echo "Slack Token: " + $SLACK_TOKEN
echo "======================="

# slack API: groups
SLACK_GROUPS=$(curl -s https://slack.com/api/groups.list?token=$SLACK_TOKEN | jq '.groups[].name')
SLACK_GROUPS=${SLACK_GROUPS//\"} # remove `"` character

echo "======================="
echo $SLACK_GROUPS
echo "======================="

# slack API: users
SLACK_USERS=$(curl -s https://slack.com/api/users.list?token=$SLACK_TOKEN | jq '.members[].name')
SLACK_USERS=${SLACK_USERS//\"} # remove `"` character

echo "======================="
echo $SLACK_USERS
echo "======================="