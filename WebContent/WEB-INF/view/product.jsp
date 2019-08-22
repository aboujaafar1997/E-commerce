<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html lang="en">
<head>
<title>Product</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Sublime project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/styles/bootstrap4/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath}/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/styles/product.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/styles/product_responsive.css">
</head>
<body>
	<fmt:setLocale value="${theLocale}" />
	<fmt:setBundle basename="mylabels.resources.mylabels" />
<div>	<%@ include file="Header.jsp"%></div>
	<!-- Home -->

	<div class="home">
		<div class="home_container">
			<div class="home_background"
				style="background-image:url(${pageContext.request.contextPath}/resources/images/categories.jpg)"></div>
			<div class="home_content_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="home_content">
								<div class="home_title">${produit.categorie}<span>.</span>
								</div>
								<div class="home_text">
									<p>${produit.desc}.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Product Details -->

	<div class="product_details">
		<div class="container">
			<div class="row details_row">

				<!-- Product Image -->
				<div class="col-lg-6">
					<div class="details_image">
						<div class="details_image_large">
							<img src="${produit.image}" alt="">
							<div class="product_extra product_new">
								<a href="categories.html">New</a>
							</div>
						</div>
						<div
							class="details_image_thumbnails d-flex flex-row align-items-start justify-content-between">
							<div class="details_image_thumbnail"
								data-image="images/details_2.jpg">
								<img src="images/details_2.jpg" alt="">
							</div>
							<div class="details_image_thumbnail"
								data-image="images/details_3.jpg">
								<img src="images/details_3.jpg" alt="">
							</div>
							<div class="details_image_thumbnail"
								data-image="images/details_4.jpg">
								<img src="images/details_4.jpg" alt="">
							</div>
						</div>
					</div>
				</div>

				<!-- Product Content -->
				<div class="col-lg-6">
					<div class="details_content">
						<div class="details_name">${produit.categorie}</div>
						<h4>
							<fmt:message key="label.matricle" />
							<p>${produit.matricule}</p>
						</h4>
						<div class="details_price">
							<fmt:message key="label.price" />
							${produit.prix} <strong>DH</strong>
						</div>

						<!-- In Stock -->

						<div class="details_text">
							<h4>
								<fmt:message key="label.Description" />
							</h4>
							<p>${produit.desc}.</p>
						</div>

						<!-- Product Quantity -->
						<div class="product_quantity_container">
							<div class="product_quantity clearfix">
								<span>Qty</span>


								<form action="${pageContext.request.contextPath}/addcartable">
									<input type="hidden" name="id" value="${produit.matricule}">

									<input id="quantity_input" type="text" pattern="[0-9]*"
										value="1" name="qte">
									<div class="quantity_buttons">
										<div id="quantity_inc_button"
											class="quantity_inc quantity_control">
											<i class="fa fa-chevron-up" aria-hidden="true"></i>
										</div>
										<div id="quantity_dec_button"
											class="quantity_dec quantity_control">
											<i class="fa fa-chevron-down" aria-hidden="true"></i>
										</div>
									</div>
							</div>



							<input class="button cart_button" type="submit"
								value="<fmt:message key="label.add"/>">

						</div>
						</form>
						<!-- Share -->
						<div class="details_share">
							<span><fmt:message key="label.share" />:</span>
							<ul>
								<li><a href="#"><i class="fa fa-pinterest"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
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
		src="${pageContext.request.contextPath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/Isotope/isotope.pkgd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/easing/easing.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/parallax-js-master/parallax.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/product.js"></script>
</body>
</html>