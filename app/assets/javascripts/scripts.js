$(document).on("turbolinks:load", function() {

    // Fading on Artist Images
	$(".shim").mouseenter( function() {
        $("img", this).addClass( "hover" );
		$(".artist-name", this).addClass( "visible" );
	}).mouseleave( function() {
        $("img", this).removeClass( "hover" );
		$(".artist-name", this).removeClass( "visible" );
	});

});