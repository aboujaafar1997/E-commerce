<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/styles/bootstrap4/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath}/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/styles/checkout.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/styles/checkout_responsive.css">
</head>
<body>
<%@ include file="Header.jsp" %>

<br><br><br><br><br><br>
<h1 style="margin-left:33px"> Ajouter des Produits :</h1><a style="margin-left:33px" href="${pageContext.request.contextPath}/produit" class="btn btn-info">Ajouter</a>
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">matricule</th>
				<th scope="col">nom Produit</th>
				<th scope="col">id Fournisseur</th>
				<th scope="col">prix</th>
				<th scope="col">date</th>
				<th scope="col">categorie</th>
				<th scope="col">description</th>
				<th scope="col">image</th>
				<th scope="col">Supprimer</th>
				
			</tr>
		</thead>
		<tbody>
		<c:forEach var="produit" items="${produits}">
		<tr><td>${produit.getMatricule()}</td><td>${produit.getNomProduit()}</td><td>${produit.getIdFournisseur()}</td><td>${produit.getPrix()}</td><td>${produit.getDate()}</td><td>${produit.getCategorie()}</td><td>${produit.getDesc()}</td><td>${produit.getImage()}</td><td><a href="${pageContext.request.contextPath}/supprimerproduit?id=${produit.getMatricule()}" class="btn btn-info">Supprimer</a></td></tr>
		
		</c:forEach>
		
		
		
		
		</tbody>

	</table>
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