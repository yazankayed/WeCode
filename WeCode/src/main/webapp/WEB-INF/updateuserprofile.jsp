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
    <form action="/updateuser" method="post" >
        <h2>Updating</h2>
        <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label">User Name:</label>
            <div class="col-sm-8">
                <input type="text" name="userName" value="${currentUser.userName}" class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label">Email:</label>
            <div class="col-sm-8">
                <input type="email" value="${currentUser.email}" name="email" class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label">ID Number:</label>
            <form:errors path="idNum" style="color:red;"/>
            <div class="col-sm-8">
                <input type="Number" name="idNum" class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label"> Experience:</label>
<%--            <form:errors path="experience" style="color:red;"/>--%>
            <div class="col-sm-8">
                <input type="Number" name="experience" class="form-control"/>
            </div>
        </div>

        <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label">Location:</label>
<%--            <form:errors path="location" style="color:red;"/>--%>
            <div class="col-sm-8">
                <input type="text" name="location"  class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label">CV:</label>
<%--            <form:errors path="cv" style="color:red;"/>--%>
            <div class="col-sm-8">
                <input type="text" name="cv"  class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label">Image:</label>
<%--            <form:errors path="image" style="color:red;"/>--%>
            <div class="col-sm-8">
                <input type="text" name="image"  class="form-control"/>
            </div>
        </div>

        <input id="button" type="submit" value="Submit" class="btn btn-primary"/>
    </form>
</section>

</body>
</html>
