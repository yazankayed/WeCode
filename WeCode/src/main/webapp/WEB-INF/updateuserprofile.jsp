<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Edit Profile</title>
</head>
<body>
<form:form action="/contactus" method="post" >
    <p class="error" style="color: red;"><form:errors path="firstName"/></p>
    <p class="error" style="color: red;"><form:errors path="lastName"/></p>
    <p class="error" style="color: red;"><form:errors path="feedbackmsg"/></p>
    <p>
        <form:label path="firstName">First Name</form:label>
        <form:input path="firstName"/>
    </p>
    <p>
        <form:label path="lastName">Last Name</form:label>
        <form:input path="lastName"/>
    </p>
    <p>
        <form:label path="feedbackmsg">My Thoughts</form:label>
        <form:input path="feedbackmsg"/>
    </p>
    <input type="submit" value="Submit" class="btn btn-primary"/>
</form:form>
</body>
</html>
