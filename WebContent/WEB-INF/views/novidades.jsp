<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach items="${novidades}" var="novidade">
	<div class="row-fluid">
		<div class="span12">
			<a href="${novidade.tags}/${novidade.idpostagem}"
				class="detalhamento"
				data-id="${novidade.idpostagem}"><p><b>${novidade.titulo}</b></p></a>
			<p>${novidade.chamada}</p>
		</div>
	</div>
</c:forEach>