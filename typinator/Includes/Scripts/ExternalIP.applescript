-- Version 1.0, (C) Ergonis Software, 2012-01-19
-- Feel free to modify the script for your own use, but leave the copyright notice intact.

try
	set curlCMD to Â
		"curl --stderr /dev/null \"http://automation.whatismyip.com/n09230945.asp\""
	set myIP to (do shell script curlCMD)
	return myIP
on error (msg)
	return msg
end try
