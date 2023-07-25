<%--
  Created by IntelliJ IDEA.
  User: Reg
  Date: 7/21/2023
  Time: 4:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login and Registration</title>
  <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/css/main.css">
</head>
<body>
<section>
  <form:form action="/registercompany" method="post" modelAttribute="newCompany">
    <h2>Registration</h2>
    <div class="form-group row mb-3">
      <form:label path="companyName" class="col-sm-4 col-form-label">Company Name:</form:label>
      <form:errors path="companyName" style="color:red;"/>
      <div class="col-sm-8">
        <form:input path="companyName" class="form-control"/>
      </div>
    </div>
    <div class="form-group row mb-3">
      <form:label path="email" class="col-sm-4 col-form-label">Email:</form:label>
      <form:errors path="email" style="color:red;"/>
      <div class="col-sm-8">
        <form:input typr="email" path="email" class="form-control"/>
      </div>
    </div>
    <div class="form-group row mb-3">
      <form:label path="password" class="col-sm-4 col-form-label">Password:</form:label>
      <form:errors path="password" style="color:red;"/>
      <div class="col-sm-8">
        <form:input type="password" path="password" class="form-control"/>
      </div>
    </div>
    <div class="form-group row mb-3">
      <form:label path="confirm" class="col-sm-4 col-form-label">Confirm PW:</form:label>
      <form:errors path="confirm" style="color:red;"/>
      <div class="col-sm-8">
        <form:input type="password" path="confirm" class="form-control"/>
      </div>
    </div>
    <input id="button" type="submit" value="Submit" class="btn btn-primary"/>
  </form:form>
</section>
</body>
</html>
