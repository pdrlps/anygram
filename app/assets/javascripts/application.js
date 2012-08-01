// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(document).ready(function() {
	$.getJSON("https://api.instagram.com/v1/tags/love/media/recent?client_id=54cb02eb1f784ea4bb750ea7c5abc85a&callback=?",
	{
    	format: "json"
    	},
    	function(data) {
    		$.each(data.data, function(i, item) {    
    			//alert(item.type);
    			$('#images').append('<img src="' + item.images.standard_resolution.url + '" width="612" height="612" />');
    		});
	    }
	 );
	 
	 $('#new').click(function(){
	 	location.reload();
	 });
	 
	 $('#me').click(function(){
	 	window.location = "http://twitter.com/pedrolopes";
	 });
  });






