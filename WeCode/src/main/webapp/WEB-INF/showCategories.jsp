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
<html>
<head>
    <meta charset="UTF-8">
    <title>Developers Categories</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="/CSS/home.css">
</head>
<body class="d-flex flex-column min-vh-100">
<div class=" navbar  mt-auto bg-dark">
    <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-0 border-top">
        <div class="col-md-4 d-flex align-items-center">
            <a href="/" class="mb-3 me-2 mb-md-0 text-body-secondary text-decoration-none lh-1">
                <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
            </a>
            <p class="mb-3 mb-md-0 text-white">&copy; 2023 Company, Inc</p>
        </div>

        <div class="nav col-md-4 d-flex justify-content-md-center ">
            <img style="width: 7%" class="mx-3"  id="facebook"src="/Images/Facebook-logo.png" alt="facebook-icon">
            <img style="width: 7%" class="mx-3 "    src="/Images/Instagram.png" alt="instagram-icon">
            <img style="width: 7%" class="mx-3"  src="/Images/twitter.png" alt="facebook-icon">
        </div>
    </footer>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</body>
</html>
