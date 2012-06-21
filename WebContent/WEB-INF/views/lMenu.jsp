<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<form>
	<div class="accordion" id="accordion2">
		<c:forEach items="${menu}" var="item">
			<div class="accordion-group ${item.url}">
				<div class="accordion-heading">
					<a class="accordion-toggle" data-toggle="collapse"
						data-parent="#accordion2" href="#${item.url}">${item.nomeMenu}</a>
				</div>

				<c:if test="${not empty item.submenu}">
					<div id="${item.url}" class="accordion-body collapse"
						style="height: 0px;">
						<div class="accordion-inner">
							<ul class="nav nav-list">
								<c:forEach items="${item.submenu}" var="subitem">
									<li><a href="#${item.url}${subitem.url}" data-id="${item.url}" data-name="${item.nomeMenu}" class="rota">${subitem.nomeSubmenu}</a>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</c:if>
			</div>
		</c:forEach>
	</div>
</form>