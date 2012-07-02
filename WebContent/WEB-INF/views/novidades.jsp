<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row-fluid">
	<div id="myCarousel" class="span12 carousel slide">
		<!-- Carousel items -->
		<div class="carousel-inner">
			<c:forEach items="${novidades}" var="novidade">
				<div class="active item">${novidade.chamada}</div>
			</c:forEach>
		</div>
		<!-- Carousel nav -->
		<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
	</div>
</div>