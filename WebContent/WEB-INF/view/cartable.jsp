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
<h1>    <pre>    Votre Cartable M.<strong><c:out value="${sessionScope.user.nom}"></c:out></strong></pre></h1>
	<c:if test="${supprimer!=null}">
				<br><br><br>
				<div style="margin-left:200px">
				<div  class="alert alert-danger" role="alert">
  <strong>Bien supprimer!</strong> Vous avez supprimé un produit de ton Cartable .</div>
									<a style="float:left" href="${pageContext.request.contextPath}/cartable" class="btn btn-info"><---cartable</a>
				</div>
				</c:if>
		<c:if test="${ajouter!=null}">
				<br><br><br>
							<div style="margin-left:200px">
			
				<div class="alert alert-success" role="alert">
  <strong>Bien ajouter!</strong> Vous avez ajouté un produit a ton Cartable .</div>
					<a style="float:left" href="${pageContext.request.contextPath}/cartable" class="btn btn-info"><---cartable</a>
				</div>
				</c:if>		
						<c:if test="${ajouter==null && supprimer==null}">				
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">matricule</th>
				<th scope="col">nom Produit</th>
				<th scope="col">prix</th>
				<th scope="col">date</th>
				<th scope="col">qte</th>
				<th scope="col">Supprimer</th>			
				
			</tr>
		</thead>
		<tbody>
		<c:forEach var="produit" items="${produits}">
		<tr><td>${produit.matricule}</td><td>${produit.nomproduit}</td><td>${produit.prix}</td><td>${produit.date}</td><td>${produit.qte}</td><td><a href="${pageContext.request.contextPath}/supprimercommande?id=${produit.matricule}" class="btn btn-info">Supprimer</a></td></tr>
		
		</c:forEach>
		</tbody>

	</table>
	
	<a style="float:right" href="${pageContext.request.contextPath}/addcommande" class="btn btn-info">Validé la commande --></a>
</c:if>	

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