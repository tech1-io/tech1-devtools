echo "======================="
echo "Started"
echo "Slack Token: $SLACK_TOKEN"
echo "Slack User: $SLACK_USER"
echo "======================="

# clear files
#slack-cleaner --token $SLACK_TOKEN --file --user "*" --perform

# clear messages: general
#slack-cleaner --token $SLACK_TOKEN --message --channel general --user "*" 

# clear messages: teams
#slack-cleaner --token $SLACK_TOKEN --message --group 'team-abc' --user "*" --rate 1 --perform

# clear messages: direct
slack-cleaner --token $SLACK_TOKEN --message --direct $SLACK_USER --user "*" --rate 3 --perform

echo "======================="
echo "Completed"
echo "======================="