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
	
	$.ajax({
		url : 'conteudoHome',
		cache : false,
		type : 'GET'
	}).done(function(content) {
		$('#section').html(content);
	});
	
	$.ajax({
		url : 'novidades',
		cache : false,
		type : 'GET'
	}).done(function(content) {
		$('#novidade').html(content);
		$('.carr').carousel({
			interval : 10000,
			pause : 'hover'
		});
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
			url : 'conteudoHome',
			cache : false,
			type : 'GET'
		}).done(function(content) {
			$('li').attr('class','');
			$('header').attr('class','home');
			$('.brand').html('Home');
			$('#section').html(content);
		});
	});
	
	$('.detalhamento').livequery('click',function(){
		var self=$(this);
		$.ajax({
			url : 'detalhamento',
			cache : false,
			type : 'GET',
			data : {idpostagem:self.attr('data-id')}
		}).done(function(content) {
			$('#section').html(content);
			$('#enviarComentario').attr('data-id',self.attr('data-id'));
		});
	});
	
	$('#enviarEmail').livequery('click',function(){
		var tipo=$('#tipo').val();
		var nome=$('#nome').val();
		var email=$('#email').val();
		var mensagem=$('#mensagem').val();
		
		if(tipo != '' && nome != '' && email != '' && mensagem != ''){
			$.ajax({
				url : 'emmailContato',
				cache : false,
				type : 'POST',
				data : {tipo:tipo,nome:nome,email:email,mensagem:mensagem}
			}).success(function() {
				alert('E-mail enviado com sucesso');
			}).error(function(){
				alert('Erro');
			});
		}else{
			alert('Favor preencher todos os campos obrigatórios');
		}
	});
	
	$('#enviarComentario').livequery('click',function(){
		var idpostagem=$(this).attr('data-id');
		var nome=$('#nomeComentario').val();
		var email=$('#emailComentario').val();
		var mensagem=$('#mensagemComentario').val();
		if(idpostagem != '' && nome != '' && email != '' && mensagem != ''){
			$.ajax({
				url : 'comentario',
				cache : false,
				type : 'POST',
				data : {idpostagem:idpostagem,nome:nome,email:email,mensagem:mensagem}
			}).success(function() {
				alert('Comentario enviado para moderação');
			}).error(function(){
				alert('Erro');
			});
		}else{
			alert('Favor preencher todos os campos obrigatórios');
		}
	});
});