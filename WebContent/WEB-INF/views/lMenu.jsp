<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<form class="well">
	<div class="accordion" id="accordion2">
		<c:forEach items="${menu}" var="item">
			<div class="accordion-group">
				<div class="accordion-heading">
					<a class="accordion-toggle" data-toggle="collapse"
						data-parent="#accordion2" href="#${item.url}">${item.nomeMenu}</a>
				</div>
				<div id="${item.url}" class="accordion-body collapse"
					style="height: 0px;">
					<div class="accordion-inner">
						<ul class="nav nav-list">
							<li class="active"><a href="#turismo/intercambio">Intercâmbio</a>
							</li>
							<li><a href="#turismo/formatura">Formaturas</a></li>
							<li><a href="#turismo/nacional">Viagens Nacionais</a></li>
							<li><a href="#turismo/cursosinternacionais">Cursos
									Rápidos Internacionais</a></li>
						</ul>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</form>