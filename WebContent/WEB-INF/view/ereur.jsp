<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<%-- langue --%>


<fmt:setLocale value="${theLocale}" />


<fmt:setBundle basename="mylabels.resources.mylabels" />
<div><%@ include file="Header.jsp" %>


	<div class="container">
	<h1> OPSsss!</h1>
	<h3 style="color:red">${ereur}</h3>
	</div>

<%@ include file="Footer.jsp" %>


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