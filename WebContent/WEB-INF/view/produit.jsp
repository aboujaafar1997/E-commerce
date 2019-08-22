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
<br>
<br>
<br>

		<!-- Billing Info -->
				<div class="col-lg-6 container">
				
				<c:if test="${ajouter!=null}">
				<br><br><br>
				<div class="alert alert-success" role="alert">
  <strong>Bien Ajouter!</strong>Vous avez ajouter un nouvelle produit !!</div>
				
				</c:if>
					<div class="billing checkout_section">
				
						<div class="checkout_form_container">
						<div class="section_title">Ajouter un nouvel produit</div>
						<div class="section_subtitle">Enter les informations suivant :</div>
							<form action="${pageContext.request.contextPath}/addproduit" id="checkout_form" class="checkout_form" method="post" enctype="multipart/form-data">
								<div class="row">
									<div class="col-xl-6">
										<!-- Matricule -->
										<label for="checkout_name">Matricule</label>
										<input type="number" id="checkout_name" class="checkout_input" required="required" name="matricule">
									</div>
									<div class="col-xl-6 last_name_col">
										<!-- nom Produit -->
										<label for="checkout_last_name">Nom de Produit</label>
										<input type="text" id="checkout_last_name" class="checkout_input" required="required" name="nomProduit">
									</div>
								</div>
								<div>
									<!-- EmFournisseurail -->
									<label for="checkout_email">ID de Fournisseur</label>
									<input type="number" id="checkout_email" class="checkout_input" required="required" name="idFournisseur">
								
								<div>
									<!-- Prix -->
									<label for="checkout_email">Prix</label>
									<input type="number" id="checkout_email" class="checkout_input" required="required" name="prix">
								
								<div>
								
									<!-- Categorie -->
									<label for="checkout_email">Categorie</label>
									<input type="text"  class="checkout_input" required="required" name="categorie">
								</div>
								
								<div>
									<!-- Description -->
										<label for="checkout_zipcode">Description</label>
									<input type="text" rows="5" id="checkout_zipcode" class="checkout_input" required="required" name="desc">
								</div>
								
						
					<br>
					<br>
								<div>
									<!-- Image -->
									<label for="checkout_phone">Image</label><br>
									
									<input type="file" name="image">
								</div>
							<br><br>
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