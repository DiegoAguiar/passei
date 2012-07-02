<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${not empty conteudo}">
	<c:set var="tagAberta" value="0" />
	<c:set var="telse" value="0" />
	<c:forEach items="${conteudo}" var="postagem">
		<c:if test="${postagem.tipo == 12}">
			<c:if test="${tagAberta == 1}">
				</div>
				<c:set var="tagAberta" value="0" />
			</c:if>

			<div class="row-fluid">
				<div class="span${postagem.tipo}">
					<h3>${postagem.titulo}</h3>
					<p>${postagem.chamada}</p>
					<p>
						<a href="${postagem.tags}/${postagem.idpostagem}"
							class="detalhamento" data-id="${postagem.idpostagem}">Continue
							Lendo</a>
					</p>
				</div>
			</div>
		</c:if>
		<c:if test="${postagem.tipo == 6}">
			<c:if test="${tagAberta == 0}">
				<div class="row-fluid">
					<div class="span${postagem.tipo}">
						<h3>${postagem.titulo}</h3>
						<p>${postagem.chamada}</p>
						<p>
							<a href="${postagem.tags}/${postagem.idpostagem}"
								class="detalhamento" data-id="${postagem.idpostagem}">Continue
								Lendo</a>
						</p>
					</div>
					<c:set var="telse" value="1" />
			</c:if>
			<c:if test="${tagAberta == 1}">
				<div class="span${postagem.tipo}">
					<h3>${postagem.titulo}</h3>
					<p>${postagem.chamada}</p>
					<p>
						<a href="${postagem.tags}/${postagem.idpostagem}"
							class="detalhamento" data-id="${postagem.idpostagem}">Continue
							Lendo</a>
					</p>
				</div>
				</div>
				<c:set var="telse" value="0" />
			</c:if>
			<c:if test="${telse == 1}">
				<c:set var="tagAberta" value="1" />
			</c:if>
			<c:if test="${telse == 0}">
				<c:set var="tagAberta" value="0" />
			</c:if>
		</c:if>
	</c:forEach>
</c:if>

<c:if test="${empty conteudo}">
	<div class="post_1">
		<h3>Não existem posts para essa categoria</h3>
		<p>Tente entrar em outra categoria ou tente novamente mais tarde</p>
	</div>
</c:if>
