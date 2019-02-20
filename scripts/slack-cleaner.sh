echo "======================="
echo "Started"
echo "Slack Token: " + $SLACK_TOKEN
echo "Slack User: " + $SLACK_USER
echo "======================="

# clear files
#slack-cleaner --token $SLACK_TOKEN --file --user "*"

# clear messages: general
#slack-cleaner --token $SLACK_TOKEN --message --channel general --user "*" 

# clear messages: teams
slack-cleaner --token $SLACK_TOKEN --message --group 'team-abc' --user "*" 

# clear messages: direct
#slack-cleaner --token $TOKEN --message --direct $USER --user "*" 

echo "======================="
echo "Completed"
echo "======================="