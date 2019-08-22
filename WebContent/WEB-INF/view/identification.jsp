<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/bootstrap4/bootstrap.min.css">
<link href="${pageContext.request.contextPath}/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/checkout.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/checkout_responsive.css">
</head>
<body>
<div>
<%@ include file="Header.jsp" %></div>
<br>
<br>
		<!-- Billing Info -->
				<div class="col-lg-6 container">
					<div class="billing checkout_section">
				
						<div class="checkout_form_container">
					<c:if test="${ereur==true}">
					<div class="alert alert-danger" role="alert">
  <strong>Ereur de login!</strong> Vous avez pas saisir le mote de passe ou l'email corecte .</div>
				
					
					</c:if>
						<div class="section_title">Identification</div>
						<div class="section_subtitle">Enter les informations suivant :</div>
							<form action="${pageContext.request.contextPath}/redirct" id="checkout_form" class="checkout_form" method="post">
								<div class="row">
									
										<!-- Name -->
										<label for="checkout_name">Email</label>
										<input type="text" id="checkout_name" class="checkout_input" required="required" name="email">
								
									
										<!-- Last Name -->
										<label for="checkout_last_name">Mote de passe</label>
										<input type="password" id="checkout_last_name" class="checkout_input" required="required" name="motpass">
								
								</div>
								</div>
								<br><br>
								<input  class="d-right btn btn-default" type="submit" value="Login">
								<input  class="d-right btn btn-default" type="reset" value="vidé">
							
								<br><br><br>
							</form>
						</div>
					</div>
				</div>


<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/styles/bootstrap4/popper.js"></script>
<script src="${pageContext.request.contextPath}/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/greensock/TweenMax.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/greensock/TimelineMax.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/greensock/animation.gsap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/easing/easing.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/parallax-js-master/parallax.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/checkout.js"></script>
</body>
</html>