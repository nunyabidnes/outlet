# outlet

This is just a bash script that can be used to control a smart plug via IFTTT webhooks and Smart Life. You need linked IFTTT and Smart Life accounts.

To use this script, create 2 applets using IFTTT webhooks:

One to turn off the outlet when the battery is sufficently charged:
If Maker Event "bat_high", then turn off Outlet

And another to turn it on when the battery is drained:
If Maker Event "bat_low", then turn on Outlet

In the script, set the lowThreshold and highThreshold variables to your liking.
Put your IFTTT key in the both of the https calls in the script, in place of "YourKeyHere"
Make the script executable, and then it can be scheduled to run in cron.
