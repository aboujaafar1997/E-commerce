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
<%@ include file="Header.jsp" %></div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div style="margin-left:200px">
<h1>Inscription de M. ${nom} <strong style="color=red "><span style="color:red">validé</span></strong></h1>
<br>
<hr>
<a href="${pageContext.request.contextPath}/login">routeur vers identification</a>
</div>
</body>
</html>