
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<html>
<head>
  <meta charset="UTF-8">
  <title>Login and Registration</title>
  <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/CSS/login.css">
</head>
<body>
<div class="container">
  <div class="forms-container">
    <div class="signin-signup">
      <form:form action="/logincompany" class="sign-in-form" method="post" modelAttribute="newLoginCompany">
        <a style="margin-bottom: 20%" id="logo_img" class="navbar-brand w-75" href="/"><img class="w-100" src="/Images/Logo.png"> </a>
        <h2 class="title">Sign In</h2>
        <form:errors path="email"/>
        <div class="input-field">
          <i class='bx bxs-user'></i>
          <form:input path="email" type="email" placeholder="Email"/>
        </div>
        <form:errors path="password"/>
        <div class="input-field">
          <i class='bx bxs-lock-alt'></i>
          <form:input path="password" type="password" placeholder="Password"/>
        </div>
        <input type="submit" value="Login" class="btn solid">
        <p class="social-text">Or sign in with social platforms</p>

        <div class="social-media">
          <a href="#" class="social-icon">
            <i class='bx bxl-facebook'></i>
          </a>
          <a href="#" class="social-icon">
            <i class='bx bxl-twitter'></i>
          </a>
          <a href="#" class="social-icon">
            <i class='bx bxl-google'></i>
          </a>
          <a href="#" class="social-icon">
            <i class='bx bxl-linkedin'></i>
          </a>
        </div>
      </form:form>
    </div>
  </div>
  <div class="panels-container">
    <div class="panel left-panel">
      <div class="content">
        <p class="hide_text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora, illo. Vitae, nesciunt.
        </p>
      </div>
      <img src="/images/Profiling_Monochromatic.png" class="image" alt="">
    </div>
    <div class="panel right-panel">
      <div class="content">
        <h3>One of us?</h3>
        <p class="hide_text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora, illo. Vitae, nesciunt.
        </p>
        <button class="btn transparent" id="sign-in-btn">Sign in</button>
      </div>
      <img src="/images/Authentication_Outline.png" class="image" alt="">
    </div>
  </div>
</div>
<script src="JS/login.js"></script>
</body>
</html>
</body>
</html>
