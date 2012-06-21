<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${not empty conteudo}">
	<c:set var="tagAberta" value="0"/>
	<c:forEach items="${conteudo}" var="postagem">
		<c:if test="${postagem.tipo == 12}">
			<c:if test="${tagAberta == 1}">
				</div>
				<c:set var="tagAberta" value="0"/>
			</c:if>
			
			<div class="row-fluid">
				<div class="span${postagem.tipo}">
					<h1>${postagem.titulo}</h1>
					<p>${postagem.chamada}</p>
				</div>
			</div>
		</c:if>
		<c:if test="${postagem.tipo == 6}">
			<c:if test="${tagAberta == 0}">
				<div class="row-fluid">
					<div class="span${postagem.tipo}">
						<h1>${postagem.titulo}</h1>
						<p>${postagem.chamada}</p>
					</div>
			</c:if>
			<c:if test="${tagAberta == 1}">
					<div class="span${postagem.tipo}">
						<h1>${postagem.titulo}</h1>
						<p>${postagem.chamada}</p>
					</div>
				</div>
			</c:if>
		</c:if>
	</c:forEach>
</c:if>

<c:if test="${empty conteudo}">
	<div class="post_1">
		<h1>Não existem posts para essa categoria</h1>
		<p>Tente entrar em outra categoria ou tente novamente mais tarde</p>
	</div>
</c:if>
