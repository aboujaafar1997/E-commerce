<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<sql:update  dataSource="jdbc/miniprojet" > delete from fournisseur where id='${param.id}'</sql:update>
<h1> Bien supprimer</h1>
<a href="${pageContext.request.contextPath}/showfournisseur">routeur</a>

</body>
</html>