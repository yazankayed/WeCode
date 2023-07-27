
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
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <link rel="stylesheet" href="/CSS/home.css">
</head>
<body>

<nav class="navbar navbar-expand-lg bg-dark">
  <div class="container-fluid">
    <a id="logo_img" class="navbar-brand" href="/"> <img class="logo_img" src="/Images/Logo_f.png"> </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav  me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a style="color: #009db0" class="nav-link active  link-info" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a style="color: #009db0" class="nav-link active  link-info" aria-current="page" href="#">Developers</a>
        </li>
        <li class="nav-item">
          <a style="color: #009db0" class="nav-link active  link-info" aria-current="page" href="#">Companies</a>
        </li>
        <li class="nav-item">
          <a style="color: #009db0" class="nav-link active  link-info" aria-current="page" href="#">Contact Us</a>
        </li>
        <li class="nav-item">
          <a  class="nav-link active link-info" aria-current="page" href="#">About Us</a>
        </li>

      </ul>
      <div class="search_bar">
        <form  class="d-flex justify-content-center" role="search">
          <input style="width: 300px" class="form-control me-3" type="search" placeholder="Search" aria-label="Search">
          <button  class="btn btn-outline-info" type="submit">Search</button>
        </form>
      </div>

      <c:if test="${userId=! null}">
        <a class="btn btn-outline-info" aria-current="page" href="/loginpageuser"> Log in </a>
      </c:if>
      <c:if test="${userId == null}">
        <a class="btn btn-outline-info" aria-current="page" href="/logout"> Log out </a>
      </c:if>

      </div>
    </div>
</nav>
<div class="container">
  <div>
    <h1>Developers</h1>
  </div>
  <div >
    <img  id="pro_bro" src="Images/Programming-bro.png" alt="pro-bro">
  </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>