<h1>Regular API Search Results</h1>
<?php
		foreach($statuses_array["statuses"] as $status)
{
	echo "Tweet:".$status["text"];?><br><?php
	echo "Handle:@".$status["user"]["screen_name"] ;?><br><br><?php

}

?>





<p>

</p>