Regular API Search 
http://127.0.0.1:8000/site/search1
for tweets that have already happened. Counter limit currently set to 15. 


Streaming API 
http://127.0.0.1:8000/site/search2
for realtime tweets that happen after the connection is opened. Will keep returning realtime tweets until stopped



Testing URL with hardcoded search query for regular API
http://127.0.0.1:8000/site/getTweets

Testing URL with hardcoded search query for realtime API
http://127.0.0.1:8000/site/listener



Third Party modules used
-abraham/twitteroauth: https://github.com/abraham/twitteroauth/blob/master/README.md
	used for regular twitter API

-spatie/twitter-streaming-api: https://github.com/spatie/twitter-streaming-api
	used for Twitter streaming API

	
	
Have created DB and generated Model/DAO/Active Record/ORM 

DB tables
-tweets
-twitter_users

For regular API searches we are storing in the DB. 
IF the user exists, we add just the tweet. Otherwise we add the user and the tweet.



Haven't done UI part completely
