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
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
</head>
<body>
<div class="container">
    <div class="forms-container">
        <div class="signin-signup">
            <form class="sign-in-form">
                <h2 class="title">Sign In</h2>
                <div class="input-field">
                    <i class='bx bxs-user'></i>
                    <input type="text" placeholder="Username">
                </div>
                <div class="input-field">
                    <i class='bx bxs-lock-alt'></i>
                    <input type="password" placeholder="Password">
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
            </form>
            <form class="sign-up-form">
                <h2 class="title">Sign Up</h2>
                <div class="input-field">
                    <i class='bx bxs-user'></i>
                    <input type="text" placeholder="Username">
                </div>
                <div class="input-field">
                    <i class='bx bxs-envelope'></i>
                    <input type="text" placeholder="Email">
                </div>
                <div class="input-field">
                    <i class='bx bxs-lock-alt'></i>
                    <input type="password" placeholder="Password">
                </div>
                <input type="submit" value="Sign Up" class="btn solid">
                <p class="social-text">Or sign up with social platforms</p>

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
            </form>
        </div>
    </div>
    <div class="panels-container">
        <div class="panel left-panel">
            <div class="content">
                <h3>New here?</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora, illo. Vitae, nesciunt.
                </p>
                <button class="btn transparent" id="sign-up-btn">Sign up</button>
            </div>
            <img src="/images/Profiling_Monochromatic.png" class="image" alt="">
        </div>
        <div class="panel right-panel">
            <div class="content">
                <h3>One of us?</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora, illo. Vitae, nesciunt.
                </p>
                <button class="btn transparent" id="sign-in-btn">Sign in</button>
            </div>
            <img src="/images/Authentication_Outline.png" class="image" alt="">
        </div>
    </div>
</div>
<script src="js/app.js"></script>
</body>
</html>
