<?php

?>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<h1>Twitter Streaming API Search</h1>



<form method="POST" action="/site/results2">
@csrf
  Search:<br>
  <input id = "search_box" type="text" name="search_string" value="perfume">
  <br><br>
  <input type="submit" value="Submit">
</form> 
<!--
<p id="results_p">
abc
</p>
-->

<script>
/*
$(document).ready(function(){
$("#results_p").text("sss")  ;

// Get the input box
	var textInputBox = document.getElementById('search_box');

	// Init a timeout variable to be used below
	var timeout = null;

	// Listen for keystroke events
	textInputBox.onkeyup = function (e) {
		
	    clearTimeout(timeout);

	    timeout = setTimeout(function () {

	        //console.log('Input Value:', textInputBox.value);
	        var data = { 	
		    				"_token": "{{ csrf_token() }}",
							search_string: $('#search_box').val()
						}
		    $.ajax({
		    		type: "POST",
					url: '/site/search3',
					data: data,
					dataType:"json",
					async:false,
					success: function(response)	{
						alert();
						alert(response[0].text);
						$("#results_p").text(response)  ;
					},
					error: function (jqXHR, exception) {
						var msg = '';
						if (jqXHR.status === 0) {
							msg = 'Not connect.\n Verify Network.';
						} else if (jqXHR.status == 404) {
							msg = 'Requested page not found. [404]';
						} else if (jqXHR.status == 500) {
							msg = 'Internal Server Error [500].'+jqXHR;
						} else if (exception === 'parsererror') {
							msg = 'Requested JSON parse failed.';
						} else if (exception === 'timeout') {
							msg = 'Time out error.';
						} else if (exception === 'abort') {
							msg = 'Ajax request aborted.';
						} else {
							msg = 'Uncaught Error.\n' + jqXHR.responseText;
						}
						
						if(msg)
							alert("msg"+msg);
					},
				});

	    }, 500);
	};
	
 	
});
*/

</script>

