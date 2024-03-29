<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Homme</title>
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
	href="${pageContext.request.contextPath}/resources/styles/main_styles.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/styles/responsive.css">
</head>
<body>
	<c:set var="theLocale"
		value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}"
		scope="session" />

	<fmt:setLocale value="${theLocale}" />

	<fmt:setBundle basename="mylabels.resources.mylabels" />


	<div><%@ include file="Header.jsp"%>
	</div>
	<div class="super_container">

		<br>
		<br>
		<br>

	</div>

	<!-- Ads -->
	<div class="avds">
		<div
			class="avds_container d-flex flex-lg-row flex-column align-items-start justify-content-between">
			<div class="avds_small">
				<div class="avds_background"
					style="background-image:url(${pageContext.request.contextPath}/resources/images/avds_small.jpg)"></div>
				<div class="avds_small_inner">

					<div class="avds_discount_container">
						<img
							src="${pageContext.request.contextPath}/resources/images/discount.png"
							alt="">
						<div>
							<div class="avds_discount">
								<div>
									20<span>%</span>
								</div>
								<div>Discount</div>
							</div>
						</div>
					</div>
					<div class="avds_small_content">
						<div class="avds_title">Smart Phones</div>
						<div class="avds_link">
							<a href="categories.html">See More</a>
						</div>
					</div>
				</div>
			</div>
			<div class="avds_large">
				<div class="avds_background"
					style="background-image:url(${pageContext.request.contextPath}/resources/images/avds_large.jpg)"></div>
				<div class="avds_large_container">
					<div class="avds_large_content">
						<div class="avds_title">Professional Cameras</div>
						<div class="avds_text">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Nullam a ultricies metus. Sed nec
							molestie eros. Sed viver ra velit venenatis fermentum luctus.</div>
						<div class="avds_link avds_link_large">
							<a href="categories.html">See More</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Products -->


	<div class="products">
		<div class="container">
			<h1>Produits:</h1>
			<hr>
			<div class="row">
				<div class="col">

					<div class="product_grid">

						<!-- Product -->

						<c:forEach var="produit" items="${listProduit}">

							<div class="product">
								<div class="product_image">
									<img src="${produit.image}" alt="">
								</div>
								<div class="product_content">
									<div class="product_title">
										<a
											href="${pageContext.request.contextPath}/detaill?matricule=${produit.matricule}">${produit.nomProduit}</a>
									</div>
									<div class="product_price">${produit.prix}DH</div>
									<p>
										<strong>Date: </strong>${produit.date}</p>
								</div>
							</div>
						</c:forEach>


					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- Ad -->

	<div class="avds_xl">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="avds_xl_container clearfix">
						<div class="avds_xl_background"
							style="background-image:url(${pageContext.request.contextPath}/resources/images/avds_xl.jpg)"></div>
						<div class="avds_xl_content">
							<div class="avds_title">Amazing Devices</div>
							<div class="avds_text">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Nullam a ultricies metus.</div>
							<div class="avds_link avds_xl_link">
								<a href="categories.html">See More</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Icon Boxes -->

	<div class="icon_boxes">
		<div class="container">
			<div class="row icon_box_row">

				<!-- Icon Box -->
				<div class="col-lg-4 icon_box_col">
					<div class="icon_box">
						<div class="icon_box_image">
							<img
								src="${pageContext.request.contextPath}/resources/images/icon_1.svg"
								alt="">
						</div>
						<div class="icon_box_title">Free Shipping Worldwide</div>
						<div class="icon_box_text">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nullam a ultricies metus. Sed nec molestie.</p>
						</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-lg-4 icon_box_col">
					<div class="icon_box">
						<div class="icon_box_image">
							<img src="${pageContext.request.contextPath}/images/icon_2.svg"
								alt="">
						</div>
						<div class="icon_box_title">Free Returns</div>
						<div class="icon_box_text">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nullam a ultricies metus. Sed nec molestie.</p>
						</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-lg-4 icon_box_col">
					<div class="icon_box">
						<div class="icon_box_image">
							<img
								src="${pageContext.request.contextPath}/resources/images/icon_3.svg"
								alt="">
						</div>
						<div class="icon_box_title">24h Fast Support</div>
						<div class="icon_box_text">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nullam a ultricies metus. Sed nec molestie.</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Newsletter -->

	<div class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="newsletter_border"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 offset-lg-2">
					<div class="newsletter_content text-center">
						<div class="newsletter_title">
							<fmt:message key="label.subscribe" />
						</div>
						<div class="newsletter_text">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nullam a ultricies metus. Sed nec molestie eros</p>
						</div>
						<div class="newsletter_form_container">
							<form action="${pageContext.request.contextPath}/subscriber" id="newsletter_form" class="newsletter_form">
								<input name="email" type="email" class="newsletter_input" required="required">
								<button class="newsletter_button trans_200">
									<span>Subscribe</span>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<%@ include file="Footer.jsp"%>

	<script
		src="${pageContext.request.contextPath}/resources//js/jquery-3.2.1.min.js"></script>
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
	<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
</body>
</html>