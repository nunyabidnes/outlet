# outlet

This is just a bash script that can be used to control a smart plug via IFTTT and Smart Life.

You need linked IFTTT and Smart Life accounts.
Then in IFTT, create 2 applets using webhooks.

One to turn off the outlet when the battery is sufficently charged:
If Maker Event "bat_high", then turn off Outlet

And one to turn it on when the battery is drained:
If Maker Event "bat_low", then turn on Outlet

Then the script can be scheduled to run in cron.
