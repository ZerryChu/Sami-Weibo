$(function	()	{

	//Skycon
	var icons = new Skycons({"color": "white"});
   // icons.set("skycon1", "sleet");
   // icons.set("skycon2", "partly-cloudy-day");
   // icons.set("skycon3", "wind");
    icons.set("skycon4", "clear-day");
    icons.play();

	
	$('#sidebarToggleLG').click(function()	{
		// Redraw All Chart
		setTimeout(function() {
			totalVisitChart.redraw();
			plotWithOptions();
		},500);
	});

	$('#sidebarToggleSM').click(function()	{
		// Redraw All Chart
		setTimeout(function() {
			totalVisitChart.redraw();
			plotWithOptions();
		},500);
	});
});
