
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
    <a id="logo_img" class="navbar-brand" href="/"> <img class="logo_img" src="/Images/Logo.png"> </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav  me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a id="nav_links" class="nav-link active" aria-current="page" href="/">Home</a>
        </li>
        <li class="nav-item">
          <a  id="nav_links" class="nav-link active " aria-current="page" href="/dev/${currentUser.id}">Profile</a>
        </li>
        <li class="nav-item">
          <a  id="nav_links" class="nav-link active " aria-current="page" href="/categories">Developers</a>
        </li>
        <li class="nav-item">
          <a  id="nav_links" class="nav-link active  " aria-current="page" href="/companies">Companies</a>
        </li>
        <li class="nav-item">
          <a id="nav_links" class="nav-link active " aria-current="page" href="/contactus">Contact Us</a>
        </li>
        <li class="nav-item">
          <a id="nav_links"  class="nav-link active " aria-current="page" href="/chat">Chat</a>
        </li>
      </ul>
      <div class="search_bar">
        <form  class="d-flex justify-content-center" role="search">
          <input style="width: 300px" class="form-control me-3" type="search" placeholder="Search" aria-label="Search">
          <button style="background-color:#1abc9c"  class="btn btn" type="submit">Search</button>
        </form>
      </div>

      <c:if test="${x == 0}">
        <a style="background-color:#1abc9c" class="btn btn" aria-current="page" href="/loginpageuser"> Log in </a>
      </c:if>
      <c:if test="${x == 1}">
        <a style="background-color:#1abc9c"  class="btn btn" aria-current="page" href="/logout"> Log out </a>
      </c:if>

      </div>
    </div>
</nav>
<div class="container">
  <div class="slogan">
    <h1 class="slogan_text">Make The World A Better Place With a Developer.</h1>
  </div>
  <div class="pro_bro">
    <img  id="pro_bro" src="Images/Programming-bro.png" alt="pro-bro">
  </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>