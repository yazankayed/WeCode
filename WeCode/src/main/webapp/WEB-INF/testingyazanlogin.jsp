<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<section>
  <form:form action="/register" method="post" modelAttribute="newUser">
    <h2>Registration</h2>
    <div class="form-group row mb-3">
      <form:label path="userName" class="col-sm-4 col-form-label">User Name:</form:label>
      <form:errors path="userName" style="color:red;"/>
      <div class="col-sm-8">
        <form:input path="userName" class="form-control"/>
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
