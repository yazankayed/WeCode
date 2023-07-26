<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Chat</title>
</head>
<body>

<form:form action="/chat/new" method="post" modelAttribute="chat">
    <form:input type="hidden" path="user" value="${user.id}"/>
    <p class="error" style="color: red;"><form:errors path="message"/></p>

    <p>
        <form:label path="message">Message</form:label>
        <form:input path="message"/>
    </p>

    <input type="submit" value="Submit" class="btn btn-primary"/>
</form:form>
</body>
</html>
