$(document).ready(function() {
	$.fn.fullpage({
		verticalCentered: true,
		anchors:['slide1', 'slide2', 'slide3', 'slide4'],
		// navigation: true,
  //     	// navigationPosition: 'right',
      	navigationTooltips:['slide1Tooltip', 'slide2Tooltip', 'slide3Tooltip', 'slide4Tooltip'],
	});
});