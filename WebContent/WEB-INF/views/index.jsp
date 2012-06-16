<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="utf-8">
<title>Passei</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Sua fonte de noticias universitárias">
<meta name="author" content="Diego Almeida de Aguiar">

<!-- Le styles -->
<link href="bootstrap/docs/assets/css/bootstrap.css" rel="stylesheet">
<link href="bootstrap/docs/assets/css/bootstrap-responsive.css"
	rel="stylesheet">

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="bootstrap/docs/assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="bootstrap/docs/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="bootstrap/docs/assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="bootstrap/docs/assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="bootstrap/docs/assets/ico/apple-touch-icon-57-precomposed.png">
</head>

<body>
	<header>
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
		<div class="row-fluid">
			<aside class="span2" id="lmenu">
				
			</aside>

			<section class="span8">
				<form class="well">
					<h1>Passei, e agora!!</h1>
					<p>News</p>
				</form>
			</section>

			<aside class="span2">
				<form class="well">Novidades!!</form>
			</aside>
		</div>
	</div>

	<footer>
		<a href="#contato">Contato</a> <a href="#equipe">Equipe</a>
	</footer>

	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="bootstrap/docs/assets/js/jquery.js"></script>
    <script src="bootstrap/docs/assets/js/bootstrap-transition.js"></script>
    <script src="bootstrap/docs/assets/js/bootstrap-alert.js"></script>
    <script src="bootstrap/docs/assets/js/bootstrap-modal.js"></script>
    <script src="bootstrap/docs/assets/js/bootstrap-dropdown.js"></script>
    <script src="bootstrap/docs/assets/js/bootstrap-scrollspy.js"></script>
    <script src="bootstrap/docs/assets/js/bootstrap-tab.js"></script>
    <script src="bootstrap/docs/assets/js/bootstrap-tooltip.js"></script>
    <script src="bootstrap/docs/assets/js/bootstrap-popover.js"></script>
    <script src="bootstrap/docs/assets/js/bootstrap-button.js"></script>
	<script src="bootstrap/docs/assets/js/bootstrap-collapse.js"></script>
	<script src="bootstrap/docs/assets/js/bootstrap-carousel.js"></script>
	<script src="bootstrap/docs/assets/js/bootstrap-typeahead.js"></script>
	<script src="js/index.js"></script>
</body>
</html>
