<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
						<div class="section_title">Inscrption dans My-Commerce</div>
						<div class="section_subtitle">Enter les informations suivant :</div>
							<form action="${pageContext.request.contextPath}/validation" id="checkout_form" class="checkout_form" method="post">
								<div class="row">
									<div class="col-xl-6">
										<!-- Name -->
										<label for="checkout_name">Nom*</label>
										<input type="text" id="checkout_name" class="checkout_input" required="required" name="nom">
									</div>
									<div class="col-xl-6 last_name_col">
										<!-- Last Name -->
										<label for="checkout_last_name">Prenom*</label>
										<input type="text" id="checkout_last_name" class="checkout_input" required="required" name="prenom">
									</div>
								</div>
								<div>
									<!-- Email -->
									<label for="checkout_email">Email Address*</label>
									<input type="text" id="checkout_email" class="checkout_input" required="required" name="email">
								
								<div>
									<!-- Country -->
									<label for="checkout_email">ville*</label>
									<input type="text"  class="checkout_input" required="required" name="ville">
								</div>
								<div>
									<!-- Address -->
									<label for="checkout_address">Address*</label>
									<input type="text" id="checkout_address" class="checkout_input" required="required" name="adresse">
								</div>
								<div>
									<!-- Zipcode -->
									<label for="checkout_zipcode">Code Postal</label>
									<input type="text" id="checkout_zipcode" class="checkout_input" required="required" name="codepostal">
								</div>
								
						
					
								<div>
									<!-- Phone no -->
									<label for="checkout_phone">CIN*</label>
									<input type="text"  class="checkout_input" required="required" name="cin">
								</div>
								<div>
									<!-- Phone no -->
									<label for="checkout_phone">Code de carte banquere*</label>
									<input type="phone" id="checkout_phone" class="checkout_input" name="cartecode">
								</div>
								
					<div>
									<!-- Phone no -->
									<label for="checkout_phone">telephone*</label>
									<input type="phone" id="checkout_phone" class="checkout_input" required="required" name="telephone">
								</div>
								<div>
									<!-- Phone no -->
									<label for="checkout_phone">Mote de passe*</label>
									<input type="password" id="checkout_phone" class="checkout_input" required="required" name="motPass">
								</div>
								
								</div>
								<input  class="d-right btn btn-default" type="submit" value="Inscrir">
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