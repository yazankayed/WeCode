%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form action="/updateUser" method="post" modelAttribute="user">
    <form:label path="userName">userName:</form:label>
    <form:input path="userName" type="text"/>
    <input type="hidden" name="_method" value="put">
    <input type="submit" value="update">
</form:form>
</body>
</html>
