$(document).ready(function(){
	$.ajax({
		url : "caroussel",
		cache : false,
		type : 'GET'
	}).done(function(content) {
		$('#carousselPassei').html(content);
		$('.carousel').carousel({
			interval : 2000,
			pause : 'hover'
		});
	});
	
	$.ajax({
		url : "lMenu",
		cache : false,
		type : 'GET'
	}).done(function(content) {
		$('#lmenu').html(content);
	});
});