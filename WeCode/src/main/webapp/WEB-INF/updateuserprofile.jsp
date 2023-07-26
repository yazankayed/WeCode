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
<section>
    <form:form action="/update" method="post" >
        <h2>Updating</h2>
        <div class="form-group row mb-3">
            <form:label path="userName" class="col-sm-4 col-form-label">User Name:</form:label>
            <form:errors path="userName" style="color:red;"/>
            <div class="col-sm-8">
                <form:input type="text" path="userName" value="${currentUser.userName}" class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <form:label path="email" class="col-sm-4 col-form-label">Email:</form:label>
            <form:errors path="email" style="color:red;"/>
            <div class="col-sm-8">
                <form:input type="email" value="${currentUser.email}" path="email" class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <form:label path="idNum" class="col-sm-4 col-form-label">ID Number:</form:label>
            <form:errors path="idNum" style="color:red;"/>
            <div class="col-sm-8">
                <form:input type="number" path="idNum" class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <form:label path="experience" class="col-sm-4 col-form-label"> Experience:</form:label>
            <form:errors path="experience" style="color:red;"/>
            <div class="col-sm-8">
                <form:input type="number" path="experience" class="form-control"/>
            </div>
        </div>

        <div class="form-group row mb-3">
            <form:label path="location" class="col-sm-4 col-form-label">Location:</form:label>
            <form:errors path="location" style="color:red;"/>
            <div class="col-sm-8">
                <form:input type="text" path="location"  class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <form:label path="cv" class="col-sm-4 col-form-label">CV:</form:label>
            <form:errors path="cv" style="color:red;"/>
            <div class="col-sm-8">
                <form:input type="text" path="cv"  class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <form:label path="image" class="col-sm-4 col-form-label">Location:</form:label>
            <form:errors path="image" style="color:red;"/>
            <div class="col-sm-8">
                <form:input type="text" path="image"  class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <form:label path="status" class="col-sm-4 col-form-label">Status:</form:label>

            <div class="col-sm-8">
                <form:input type="checkbox" path="status"  class="form-control"/>
            </div>
        </div>
        <input id="button" type="submit" value="Submit" class="btn btn-primary"/>
    </form:form>
</section>

</body>
</html>
