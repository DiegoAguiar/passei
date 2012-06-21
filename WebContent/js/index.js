$(document).ready(function(){
	$.ajax({
		url : 'caroussel',
		cache : false,
		type : 'GET'
	}).done(function(content) {
		$('#carousselPassei').html(content);
		$('.carousel').carousel({
			interval : 10000,
			pause : 'hover'
		});
	});
	
	$.ajax({
		url : 'lMenu',
		cache : false,
		type : 'GET'
	}).done(function(content) {
		$('#lmenu').html(content);
	});
	
	$('.rota').livequery('click',function(){
		var self = $(this);
		$.ajax({
			url : 'conteudo',
			cache : false,
			type : 'GET',
			data : {assunto:$(this).attr('href')}
		}).done(function(content) {
			$('li').attr('class','');
			self.parent('li').attr('class','active');
			$('header').attr('class',self.attr('data-id'));
			$('.brand').html(self.attr('data-name'));
			$('#section').html(content);
		});
	});
	
	$('.home').livequery('click',function(){
		$.ajax({
			url : 'conteudo',
			cache : false,
			type : 'GET',
			data : {assunto:'#home'}
		}).done(function(content) {
			$('li').attr('class','');
			$('header').attr('class','home');
			$('.brand').html('Home');
			$('#section').html(content);
		});
	});
});