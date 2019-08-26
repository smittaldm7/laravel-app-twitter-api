<?php

namespace App\Http\Controllers;

//require "vendor/autoload.php";

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Abraham\TwitterOAuth\TwitterOAuth;
use Spatie\TwitterStreamingApi\PublicStream;
use DB;
use App\Tweet;
use App\TwitterUser;

use Spatie\Async\Pool;

class SiteController extends Controller {

    public function search1()
	{
		//Go to page and obtain serach string
			
		
		return view('search1');
	
	}


	public function search2()
    {

    	return view('search2');
        
    }

    public function results1()
    {
        //echo "Duke of London".$_POST['search_string'];
        //Process search string
        //Traditional Method. Make API call with search string as parameter and get results back

        $access_token = "49551572-1C49QehWLXV5BqAC5URt0zSMllufmHqaFKC9lgNZH";
		$access_token_secret = "KDc4f75hA29UoAPgEgDGsBVOFa31qzXZVSfwLXODfBy52";

    	$connection = new TwitterOAuth("I1MguMiBfOZwfoa7YCcNjkD32", "ZFqc6g9BLk99FZThBP11V3Bc3qeVSDHKC3XqU3jdxNgDAUjpme", 
			    			$access_token, 
			    			$access_token_secret);
		$content = $connection->get("account/verify_credentials");
		
		//echo "<pre>";
		//print_r($content);

		//https://stream.twitter.com/1.1/statuses/filter.json
		//https://api.twitter.com/1.1/statuses/home_timeline.json?count=25&exclude_replies=true
		//https://api.twitter.com/1.1/search/tweets.json

		$statuses = $connection->get("search/tweets", ["q"=> $_POST['search_string'] ,"count" => 15]);

		//echo "<pre>";
		//print_r($statuses[0]);
		
		$statuses_array = json_decode(json_encode($statuses), true);
			



		//echo "<pre>";
		//print_r($statuses_array);
		//echo "<pre>";
		//print_r($statuses_array); 

		//foreach($statuses_array["statuses"] as $status)
		//{
		//	echo "\r\nTweet:".$status["text"]."\r\nHandle:@".$status["user"]["screen_name"] ;

		//}
		//exit;


		foreach($statuses_array["statuses"] as $status)
		{
			//echo "\r\n- - - - - - - - - - - - -TWEET : ".$status["text"]."\r\n HANDLE : @".$status["user"]["screen_name"] ;

			//$existingTwitterUser = DB::table('twitter_users')->where('twitter_handle', $status["user"]["screen_name"])->first();

			$twitterUser1 = new TwitterUser();
			$existingTwitterUser = $twitterUser1::where('twitter_handle', $status["user"]["screen_name"])->first();
			

			$twitter_user_id=null;
			if(isset($existingTwitterUser))
			{
				$twitter_user_id=$existingTwitterUser->id;

			}
			else
			{
				$twitterUser= new TwitterUser();
				$twitterUser->twitter_handle = $status["user"]["screen_name"];
				$twitterUser->save();
				//$newTwitterUser = DB::table('twitter_users')->where('twitter_handle', $status["user"]["screen_name"])->first();
				$newTwitterUser = $twitterUser1::where('twitter_handle', $status["user"]["screen_name"])->first();
				$twitter_user_id=$newTwitterUser->id;
			}

			$tweet = new Tweet();
			$tweet->text = $status["text"];
			$tweet->twitter_user_id = $twitter_user_id;
			$tweet->save();
		}

		return view('results1', ['statuses_array' => $statuses_array]);
		
    }

    //give results for search query using Twitter regular API
    public function results2()
    {
        //echo "Duke of London".$_POST['search_string'];
        
    	echo "------------------------STREAMING API RESULTS-------------------------";

    	set_time_limit ( 3600 ); //increase tim limit to 50 minutes
		//exit;
		$accessToken = "49551572-1C49QehWLXV5BqAC5URt0zSMllufmHqaFKC9lgNZH";
		$accessTokenSecret = "KDc4f75hA29UoAPgEgDGsBVOFa31qzXZVSfwLXODfBy52";

    	$consumerKey="I1MguMiBfOZwfoa7YCcNjkD32";
    	$consumerSecret = "ZFqc6g9BLk99FZThBP11V3Bc3qeVSDHKC3XqU3jdxNgDAUjpme";

		PublicStream::create(
		    $accessToken,
		    $accessTokenSecret,
		    $consumerKey,
		    $consumerSecret
		)->whenHears($_POST['search_string'], function(array $tweet) {

		    //echo "@{$tweet['user']['screen_name']} tweeted {$tweet['text']}";
		    echo "HANDLE: @".$tweet['user']['screen_name'];
		    echo "--------------";
		    echo "TWEET:".$tweet['text'];
		    echo "---------------------------------------------------------------------------";
			//echo "<pre>";
			//print_r($tweet);

		    
		})->startListening();
       
                
    }

    public function index()
	{
		echo "index";

		

		$pool = Pool::create();

		foreach ($things as $thing) {
		    $pool->add(function () use ($thing) {
		        // Do a thing
		        echo "do a thing";
		    })->then(function ($output) {
		        // Handle success
		        echo "success";
		    })->catch(function (Throwable $exception) {
		        // Handle exception
		        echo "exception";
		    });
		}

		$pool->wait();

		exit;

		$tweets = DB::select('select * from tweets');
		echo '<pre>';
		print_r($tweets);


		
		

		return view('index', ['name' => 'James']);
	
	}


	//twitter regular api hardcoded query
	public function getTweets()
	{

		//echo "Duke of London".$_POST['search_string'];
        //Process search string
        //Traditional Method. Make API call with search string as parameter and get results back

        $access_token = "49551572-1C49QehWLXV5BqAC5URt0zSMllufmHqaFKC9lgNZH";
		$access_token_secret = "KDc4f75hA29UoAPgEgDGsBVOFa31qzXZVSfwLXODfBy52";

    	$connection = new TwitterOAuth("I1MguMiBfOZwfoa7YCcNjkD32", "ZFqc6g9BLk99FZThBP11V3Bc3qeVSDHKC3XqU3jdxNgDAUjpme", 
			    			$access_token, 
			    			$access_token_secret);
		$content = $connection->get("account/verify_credentials");
		
		//echo "<pre>";
		//print_r($content);

		//https://stream.twitter.com/1.1/statuses/filter.json
		//https://api.twitter.com/1.1/statuses/home_timeline.json?count=25&exclude_replies=true
		//https://api.twitter.com/1.1/search/tweets.json

		$statuses = $connection->get("search/tweets", ["q"=> "denmark from: lang:en" ,"count" => 5, ]);

		//echo "<pre>";
		//print_r($statuses[0]);
		
		$statuses_array = json_decode(json_encode($statuses),true);

		//echo "<pre>";
		//print_r($statuses_array);
		//exit;
		
		foreach($statuses_array["statuses"] as $status)
		{
			echo "\r\n- - - - - - - - - - - - -TWEET : ".$status["text"]."\r\n HANDLE : @".$status["user"]["screen_name"] ;

			//$existingTwitterUser = DB::table('twitter_users')->where('twitter_handle', $status["user"]["screen_name"])->first();

			$twitterUser1 = new TwitterUser();
			$existingTwitterUser = $twitterUser1::where('twitter_handle', $status["user"]["screen_name"])->first();
			

			$twitter_user_id=null;
			if(isset($existingTwitterUser))
			{
				$twitter_user_id=$existingTwitterUser->id;

			}
			else
			{
				$twitterUser= new TwitterUser();
				$twitterUser->twitter_handle = $status["user"]["screen_name"];
				$twitterUser->save();
				//$newTwitterUser = DB::table('twitter_users')->where('twitter_handle', $status["user"]["screen_name"])->first();
				$newTwitterUser = $twitterUser1::where('twitter_handle', $status["user"]["screen_name"])->first();
				$twitter_user_id=$newTwitterUser->id;
			}

			$tweet = new Tweet();
			$tweet->text = $status["text"];
			$tweet->twitter_user_id = $twitter_user_id;
			$tweet->save();
		}

		



		
		
	}

	//twitter streaming API hardcoded query
	public function listener()
	{




/*
		$curl = curl_init();

		curl_setopt_array($curl, array(
		  CURLOPT_URL => "https://stream.twitter.com/1.1/statuses/filter.json",
		  CURLOPT_RETURNTRANSFER => true,
		  CURLOPT_ENCODING => "",
		  CURLOPT_MAXREDIRS => 10,
		  CURLOPT_TIMEOUT => 30,
		  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
		  CURLOPT_CUSTOMREQUEST => "GET",
		  CURLOPT_HTTPHEADER => array(
		    "Authorization: OAuth oauth_consumer_key='I1MguMiBfOZwfoa7YCcNjkD32',oauth_token='49551572-1C49QehWLXV5BqAC5URt0zSMllufmHqaFKC9lgNZH',oauth_signature_method='HMAC-SHA1',oauth_timestamp='1564909143',oauth_nonce='TLBUnIqsmpm',oauth_version='1.0',oauth_signature='QYtwr7qwgsMyHPirIHBhnFgLbCo%3D'",
		    "Postman-Token: d0cb5e97-a6e6-48c7-b1ec-8bfedc116d1c",
		    "cache-control: no-cache"
		  ),
		));

		$response = curl_exec($curl);
		$err = curl_error($curl);

		curl_close($curl);

		if ($err) {
		  echo "cURL Error #:" . $err;
		} else {
		  echo $response;
		}

exit;*/


		
		echo "Listner123";
		set_time_limit ( 3600 ); //increase tim limit to 50 minutes
		//exit;
		$accessToken = "49551572-1C49QehWLXV5BqAC5URt0zSMllufmHqaFKC9lgNZH";
		$accessTokenSecret = "KDc4f75hA29UoAPgEgDGsBVOFa31qzXZVSfwLXODfBy52";

    	$consumerKey="I1MguMiBfOZwfoa7YCcNjkD32";
    	$consumerSecret = "ZFqc6g9BLk99FZThBP11V3Bc3qeVSDHKC3XqU3jdxNgDAUjpme";

		
		PublicStream::create(
		    $accessToken,
		    $accessTokenSecret,
		    $consumerKey,
		    $consumerSecret
		)->whenHears('dayton', function(array $tweet) {
		    echo "@{$tweet['user']['screen_name']} tweeted {$tweet['text']}         .";
		    
		})->startListening();
		
		/*
		PublicStream::create(
		    $accessToken,
		    $accessTokenSecret,
		    $consumerKey,
		    $consumerSecret
		)->whenFrom([
		        [-180, -90, 180, 90] // Whole world
		], function(array $tweet) {
		    echo "{$tweet['user']['screen_name']} just tweeted {$tweet['text']} with a location attached";
		})->startListening();
		*/

		
	}
	
	
	
	

    
	

}