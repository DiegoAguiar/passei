<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="utf-8">
<title>Passei</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Sua fonte de noticias universitÃ¡rias">
<meta name="author" content="Diego Almeida de Aguiar">

<!-- Le styles -->
<link href="/passei/bootstrap/docs/assets/css/bootstrap.css" rel="stylesheet">
<link href="/passei/bootstrap/docs/assets/css/bootstrap-responsive.css"
	rel="stylesheet">
<link href="/passei/css/index.css" rel="stylesheet">

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="/passei/images/favicon.png">
<!-- <link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="bootstrap/docs/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="bootstrap/docs/assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="bootstrap/docs/assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="bootstrap/docs/assets/ico/apple-touch-icon-57-precomposed.png">
 --></head>

<body>
	<header class="home">
		<div class="row-fluid">
			<div class="navbar span12">
				<div class="navbar-inner">
					<div class="container">
						<div class="nav-collapse">
							<form class="navbar-search pull-right" action="">
								<input type="text" class="search-query span12"
									placeholder="Buscar">
							</form>
						</div>
						<a class="brand" href="#">Home</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row-fluid" id="carousselPassei"></div>
	</header>

	<div class="container-fluid">
		<br> <br>
		<div class="row-fluid">
			<aside class="span2" id="lmenu"></aside>

			<section class="span8" id="section">
				<h1>Passei, e agora!!</h1>
				<p>News</p>
			</section>

			<aside class="span2" id="novidade"></aside>
		</div>
	</div>

	<footer>
		<div class="row-fluid">
			<div class="navbar span12">
				<div class="navbar-inner">
					<div class="container">
						<ul class="nav">
							<li><a href="#contato" class="contato" data-toggle="modal">Contato</a></li>
							<li><a href="#equipe">Equipe</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<div class="modal hide" id="contato">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">X</button>
			<h3>Contato</h3>
		</div>
		<div class="modal-body">
			<form action="formulario">
				<div class="row-fluid">
					<label>Tipo:*</label>
					<select name="tipo" id="tipo" class="span7">
						<optgroup label="Outros">
							<option value="outros">Outros</option>
						</optgroup>
					</select>
					<label>Nome:*</label>
					<input type="text" name="nome" id="nome" maxlength="255" placeholder="Nome" class="span7">
					<label>E-mail:*</label>
					<input type="text" name="email" id="email" maxlength="255" placeholder="E-mail" class="span7">
					<label>Mensagem:*</label>
					<textarea name="mensagem" rows="5" id="mensagem" placeholder="Mensagem" class="span7"></textarea>
				</div>
			</form>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Fechar</a>
			<a href="#" class="btn btn-primary" id="enviarEmail">Enviar</a>
		</div>
	</div>
	
	<div class="modal hide" id="comentario">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">X</button>
			<h3>Novo Comentário</h3>
		</div>
		<div class="modal-body">
			<form action="formulario">
				<div class="row-fluid">
					<label>Nome:*</label>
					<input type="text" name="nome" id="nomeComentario" maxlength="255" placeholder="Nome" class="span7">
					<label>E-mail:*</label>
					<input type="text" name="email" id="emailComentario" maxlength="255" placeholder="E-mail" class="span7">
					<label>Comentário:*</label>
					<textarea name="mensagem" rows="5" id="mensagemComentario" placeholder="Comentário" class="span7"></textarea>
				</div>
			</form>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Cancelar</a>
			<a href="#" class="btn btn-primary" id="enviarComentario">Enviar</a>
		</div>
	</div>

	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="/passei/bootstrap/docs/assets/js/jquery.js"></script>
	<script src="/passei/js/jquery.livequery.js"></script>
	<script src="/passei/bootstrap/docs/assets/js/bootstrap-transition.js"></script>
	<script src="/passei/bootstrap/docs/assets/js/bootstrap-alert.js"></script>
	<script src="/passei/bootstrap/docs/assets/js/bootstrap-modal.js"></script>
	<script src="/passei/bootstrap/docs/assets/js/bootstrap-dropdown.js"></script>
	<script src="/passei/bootstrap/docs/assets/js/bootstrap-scrollspy.js"></script>
	<script src="/passei/bootstrap/docs/assets/js/bootstrap-tab.js"></script>
	<script src="/passei/bootstrap/docs/assets/js/bootstrap-tooltip.js"></script>
	<script src="/passei/bootstrap/docs/assets/js/bootstrap-popover.js"></script>
	<script src="/passei/bootstrap/docs/assets/js/bootstrap-button.js"></script>
	<script src="/passei/bootstrap/docs/assets/js/bootstrap-collapse.js"></script>
	<script src="/passei/bootstrap/docs/assets/js/bootstrap-carousel.js"></script>
	<script src="/passei/bootstrap/docs/assets/js/bootstrap-typeahead.js"></script>
	<script src="/passei/js/indexFavoritosConteudo.js"></script>
</body>
</html>
