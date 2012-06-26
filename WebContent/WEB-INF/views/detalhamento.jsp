<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach items="${postagem}" var="post">
	<div class="row-fluid">
		<div class="span12">
			<h1>${post.titulo}</h1>
			<p>${post.texto}</p>
		</div>
	</div>
</c:forEach>


<c:if test="${empty postagem}">
	<div class="post_1">
		<h1>Postagem inexistente</h1>
		<p>Tente entrar em outra categoria ou tente novamente mais tarde</p>
	</div>
</c:if>
