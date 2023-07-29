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
        <input type="hidden" name="_method" value="PATCH">
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
<%--            <form:errors path="idNum" style="color:red;"/>--%>
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
        <div class="form-group row mb-3">
            <label name="status" class="col-sm-4 col-form-label">Status:</label>
            <div class="col-sm-8">
                <select name="status" class="form-control">
                        <option value="false">Unemployed</option>
                        <option value="true">Employed</option>
                </select>
            </div>
        </div>
        <div class="form-group row mb-3">
            <label name="category" class="col-sm-4 col-form-label">Category:</label>
            <div class="col-sm-8">
                <select name="category" class="form-control">
                    <c:forEach var="i" items="${allcategories}">
                        <option value="${i.id}">${i.categoryType}</option>
                    </c:forEach>

                </select>
            </div>
        </div>


        <div style="display: flex">


        <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label">Python:</label>
            <div class="col-sm-8">
                <input type="checkbox" name="python"  class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label">Java:</label>
            <div class="col-sm-8">
                <input type="checkbox" name="java"  class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label">JavaScript:</label>
            <div class="col-sm-8">
                <input type="checkbox" name="javascript"  class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label">PHP:</label>
            <div class="col-sm-8">
                <input type="checkbox" name="php"  class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label">.NET:</label>
            <div class="col-sm-8">
                <input type="checkbox" name="net"  class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label">C++:</label>
            <div class="col-sm-8">
                <input type="checkbox" name="Cp"  class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label">C:</label>
            <div class="col-sm-8">
                <input type="checkbox" name="C"  class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <label  class="col-sm-4 col-form-label">C#:</label>
            <div class="col-sm-8">
                <input type="checkbox" name="Cs"  class="form-control"/>
            </div>
        </div>
        </div>







        <input id="button" type="submit" value="Submit" class="btn btn-primary"/>
    </form>
</section>

</body>
</html>
