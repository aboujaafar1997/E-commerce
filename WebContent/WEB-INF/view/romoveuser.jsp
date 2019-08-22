<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<sql:update  dataSource="jdbc/miniprojet" > delete from users where id=${param.id}</sql:update>
<h1> Bien supprimer</h1>
<a href="${pageContext.request.contextPath}/showusers">routeur</a>
id=${param.id}
</body>
</html>