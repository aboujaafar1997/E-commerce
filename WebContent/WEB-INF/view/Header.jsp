
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title></head>
<body>

	<%--- langague --%>
	<fmt:setLocale value="${theLocale}" />
	<fmt:setBundle basename="mylabels.resources.mylabels" />

	<%----user --%>
	<c:if test="${sessionScope.role!='admin'}">
		<!-- Header -->

		<header class="header">
			<div class="header_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div
								class="header_content d-flex flex-row align-items-center justify-content-start">
								<div class="logo">
									<a href="#">My-Commerce</a>
								</div>
								<nav class="main_nav">
									<ul>
										<li class="hassubs active"><a
											href="${pageContext.request.contextPath}"><fmt:message
													key="label.home" /></a>
										<li class="hassubs"><a href="#"><fmt:message
													key="label.catergories" /></a>
											<ul>

												<li><a
													href="${pageContext.request.contextPath}">
														All</a></li>

												<sql:query var="list" dataSource="jdbc/miniprojet">
											select * from categorie
											</sql:query>


												<c:forEach var="Ligne" items="${list.rowsByIndex}">
													<tr>
														<c:forEach var="col" items="${Ligne}">

															<li><a
																href="${pageContext.request.contextPath}/categorie/${col}"><c:out
																		value="${col}" /></a></li>
															<li><hr></li>
														</c:forEach>
													</tr>
												</c:forEach>


											</ul></li>
										<li><a href="contact.html"><fmt:message
													key="label.contact" /></a></li>
										<c:if test="${sessionScope.user==null}">
											<li><a href="${pageContext.request.contextPath}/login"><fmt:message
														key="label.login" /></a></li>
											<li><a href="${pageContext.request.contextPath}/Inscrir"
												style="color: red"><fmt:message key="label.sing" /></a></li>

										</c:if>
										<c:if test="${sessionScope.user!=null}">
											<li><a href="${pageContext.request.contextPath}/logout"
												style="color: red"><fmt:message key="label.out" /></a></li>
										</c:if>
									</ul>
								</nav>
								<div class="header_extra ml-auto">
									<c:if test="${sessionScope.user!=null}">

										<div class="shopping_cart">
											<a href="${pageContext.request.contextPath}/cartable"> <svg
													version="1.1" xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
													viewBox="0 0 489 489"
													style="enable-background: new 0 0 489 489;"
													xml:space="preserve">
											<g>
												<path
														d="M440.1,422.7l-28-315.3c-0.6-7-6.5-12.3-13.4-12.3h-57.6C340.3,42.5,297.3,0,244.5,0s-95.8,42.5-96.6,95.1H90.3
													c-7,0-12.8,5.3-13.4,12.3l-28,315.3c0,0.4-0.1,0.8-0.1,1.2c0,35.9,32.9,65.1,73.4,65.1h244.6c40.5,0,73.4-29.2,73.4-65.1
													C440.2,423.5,440.2,423.1,440.1,422.7z M244.5,27c37.9,0,68.8,30.4,69.6,68.1H174.9C175.7,57.4,206.6,27,244.5,27z M366.8,462
													H122.2c-25.4,0-46-16.8-46.4-37.5l26.8-302.3h45.2v41c0,7.5,6,13.5,13.5,13.5s13.5-6,13.5-13.5v-41h139.3v41
													c0,7.5,6,13.5,13.5,13.5s13.5-6,13.5-13.5v-41h45.2l26.9,302.3C412.8,445.2,392.1,462,366.8,462z" />
											</g>
										</svg>
						    	<sql:query var="count" dataSource="jdbc/miniprojet">
											select count(matricule) as ccc from cartable where userid='${sessionScope.user.cin}'
											</sql:query>
												<c:forEach var="count" items="${count.rowsByIndex}">
										   	<c:forEach var="count1" items="${count}">
														
														<div>
													Cart de M.<strong><c:out
															value="${sessionScope.user.getNom()}"></c:out></strong><span>(<c:out value="${count1}"></c:out>)</span>
												</div>
														</c:forEach>
														</c:forEach>
										
										
												
											</a>
										</div>




									</c:if>






									<div class="hamburger">
										<i class="fa fa-bars" aria-hidden="true"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<%----------------------------------------menu user--------------------------------------- --%>


			<div class="menu menu_mm trans_300">
				<div class="menu_container menu_mm">
					<div class="page_menu_content">

						<div class="page_menu_search menu_mm">
							<form action="#">
								<input type="search" required="required"
									class="page_menu_search_input menu_mm"
									placeholder="Search for products...">
							</form>
						</div>
						<ul class="page_menu_nav menu_mm">
							<li class="page_menu_item has-children menu_mm"><a
								href="index.html">Home<i class="fa fa-angle-down"></i></a></li>
							<li class="page_menu_item "><a
								href="categories.html">Categories</a>
								<ul>
									<sql:query var="list" dataSource="jdbc/miniprojet">
											select * from categorie
											</sql:query>


									<c:forEach var="Ligne" items="${list.rowsByIndex}">
										<tr>
											<c:forEach var="col" items="${Ligne}">

												<li ><a
													href="${pageContext.request.contextPath}?categorie=${col}"><c:out
															value="${col}" /></a></li>
											</c:forEach>
										</tr>
									</c:forEach>
								</ul></li>

							<li class="page_menu_item menu_mm"><a href="contact.html">Contact<i
									class="fa fa-angle-down"></i></a></li>
							<c:if test="${sessionScope.user==null}">
								<li class="page_menu_item menu_mm"><a href="${pageContext.request.contextPath}/login"><fmt:message
											key="label.login" /></a></li>
								<li class="page_menu_item menu_mm"><a href="${pageContext.request.contextPath}/Inscrir"
									style="color: red"><fmt:message key="label.sing" /></a></li>

							</c:if>
							<c:if test="${sessionScope.user!=null}">
								<li class="page_menu_item menu_mm"><a href="${pageContext.request.contextPath}/logout"
									style="color: red"><fmt:message key="label.out" /></a></li>
							</c:if>

						</ul>
					</div>
				</div>

				<div class="menu_close">
					<i class="fa fa-times" aria-hidden="true"></i>
				</div>


			</div>
</c:if>
			<%------------------------------------ admin -------------------------------------------%>




			<c:if test="${sessionScope.role=='admin'}">
				<!-- Header -->

				<header class="header">
					<div class="header_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div
										class="header_content d-flex flex-row align-items-center justify-content-start">
										<div class="logo">
											<a href="#">My-Commerce-admin</a>
										</div>
										<nav class="main_nav">
											<ul>

												<li><a href="${pageContext.request.contextPath}/showcategorie">Categories</a></li>
												<li><a
													href="${pageContext.request.contextPath}/showproduit">Produit</a></li>
												<li><a href="${pageContext.request.contextPath}/showusers">Utilisateur</a></li>
												<li><a href="${pageContext.request.contextPath}/showfournisseur">Fourniseur</a></li>


												<c:if test="${sessionScope.user==null}">
													<li><a href="${pageContext.request.contextPath}/login">Identifier</a></li>
													<li><a
														href="${pageContext.request.contextPath}/Inscrir"
														style="color: red">Inscrir</a></li>

												</c:if>
												<c:if test="${sessionScope.user!=null}">
													<li><a
														href="${pageContext.request.contextPath}/logout"
														style="color: red">Déconnecter</a></li>
												</c:if>
											</ul>
										</nav>
										<div class="header_extra ml-auto">




											<div class="hamburger">
												<i class="fa fa-bars" aria-hidden="true"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
			</c:if>
<%------------------------------------------------maenu admin------------------------ --%>



			<div class="menu menu_mm trans_300">
				<div class="menu_container menu_mm">
					<div class="page_menu_content">

						<div class="page_menu_search menu_mm">
							<form action="#">
								<input type="search" required="required"
									class="page_menu_search_input menu_mm"
									placeholder="Search for products...">
							</form>
						</div>
						<ul class="page_menu_nav menu_mm">
							<li class="page_menu_item "><a
								href="index.html">Home</a></li>
						
								
								<li class="page_menu_item "><a href="${pageContext.request.contextPath}/showcategorie">Categories</a></li>
												<li class="page_menu_item "><a
													href="${pageContext.request.contextPath}/showproduit">Produit</a></li>
												<li class="page_menu_item "><a href="${pageContext.request.contextPath}/showusers">Utilisateur</a></li>
												<li class="page_menu_item "><a href="${pageContext.request.contextPath}/showfournisseur">Fourniseur</a></li>
								
								
								
								<ul>


							<c:if test="${sessionScope.user!=null}">
								<li class="page_menu_item menu_mm"><a href="${pageContext.request.contextPath}/logout"
									style="color: red"><fmt:message key="label.out" /></a></li>
							</c:if>

						</ul>
					</div>
				</div>

				<div class="menu_close">
					<i class="fa fa-times" aria-hidden="true"></i>
				</div>


			</div>

















			<script
				src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/styles/bootstrap4/popper.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/styles/bootstrap4/bootstrap.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/plugins/greensock/TweenMax.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/plugins/greensock/TimelineMax.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/plugins/greensock/animation.gsap.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/plugins/greensock/ScrollToPlugin.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/plugins/easing/easing.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/plugins/parallax-js-master/parallax.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/resources/js/checkout.js"></script>
</body>
</html>