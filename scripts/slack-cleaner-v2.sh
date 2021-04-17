SLACK_CHANNEL='team-abc'

echo "======================="
echo "Started"
echo "Slack Token: $SLACK_TOKEN"
echo "Slack User: $SLACK_USER"
echo "Slack User: $SLACK_CHANNEL"
echo "======================="

docker run --rm sgratzl/slack-cleaner -c "slack-cleaner --token $SLACK_TOKEN --message --group $SLACK_CHANNEL --user "*" --as_user" 

docker run --rm sgratzl/slack-cleaner -c "slack-cleaner --token $SLACK_TOKEN --message --group $SLACK_CHANNEL --user "*" --as_user --rate 1 --perform"

echo "======================="
echo "Completed"
echo "======================="
