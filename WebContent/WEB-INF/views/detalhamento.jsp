<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach items="${postagem}" var="post">
	<div class="row-fluid">
		<div class="span12">
			<h1>${post.titulo}</h1>
			<p>${post.texto}</p>
			<p><a href="#comentario" class="comentario btn" data-toggle="modal" data-id="${post.idpostagem}">Novo Comentário</a></p>
		</div>
	</div>
	<div class="row-fluid">
		<div class="span1"></div>
		<div class="span10">
			<h6>Comentários</h6>
		</div>
	</div>
	<c:forEach items="${post.comentarios}" var="comentario">
		<div class="row-fluid">
			<div class="span1"></div>
			<div class="span10 well">			
				<p>${comentario.nome}</p>
				<p>${comentario.texto}</p>
			</div>
		</div>
	</c:forEach>

</c:forEach>


<c:if test="${empty postagem}">
	<div class="post_1">
		<h1>Postagem inexistente</h1>
		<p>Tente entrar em outra categoria ou tente novamente mais tarde</p>
	</div>
</c:if>
