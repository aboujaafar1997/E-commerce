<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
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
<sql:query var="result" dataSource="jdbc/miniprojet" >select * FROM users</sql:query>

<br><br><br><br><br><br>

	<table class="table " width="100%">
		<thead class="thead-dark">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Nom</th>
				<th scope="col">Prenom</th>
				<th scope="col">Email</th>
				<th scope="col">Ville</th>
				<th scope="col">Code postale</th>
				<th scope="col">CNI</th>
				<th scope="col">Carte code</th>
				<th scope="col">Telephone</th>
				<th scope="col">Adresse</th>
				<th scope="col">Mote de passe</th>
				<th scope="col">Role</th>
				<th scope="col">Supprimer</th>
			</tr>
		</thead>
		<tbody>
		 <c:forEach var="Ligne" items="${result.rows}">
            <tr> 
                <c:forEach var="col" items="${Ligne}">
                    <td><c:out value="${col}"/></td>
                </c:forEach>
                <td><a href="${pageContext.request.contextPath}/romoveuser?id=${Ligne.id}">supprimer</a></td>
            </tr>
        </c:forEach>
		</tbody>
	</table>

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