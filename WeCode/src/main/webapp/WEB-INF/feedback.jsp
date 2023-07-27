<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="/CSS/contactus.css">
    <title>Contact Us</title>
    <script
            src="https://kit.fontawesome.com/64d58efce2.js"
            crossorigin="anonymous"
    ></script>
</head>
<body>
<%--<form:form action="/contactus" method="post" modelAttribute="feedback">--%>
<%--    <p class="error" style="color: red;"><form:errors path="firstName"/></p>--%>
<%--    <p class="error" style="color: red;"><form:errors path="lastName"/></p>--%>
<%--    <p class="error" style="color: red;"><form:errors path="feedbackmsg"/></p>--%>
<%--    <p>--%>
<%--        <form:label path="firstName">First Name</form:label>--%>
<%--        <form:input path="firstName"/>--%>
<%--    </p>--%>
<%--    <p>--%>
<%--        <form:label path="lastName">Last Name</form:label>--%>
<%--        <form:input path="lastName"/>--%>
<%--    </p>--%>
<%--    <p>--%>
<%--        <form:label path="feedbackmsg">My Thoughts</form:label>--%>
<%--        <form:input path="feedbackmsg"/>--%>
<%--    </p>--%>
<%--    <input type="submit" value="Submit" class="btn btn-primary"/>--%>
<%--</form:form>--%>
<div class="container">
    <span class="big-circle"></span>
    <img src="/Images/shape.png" class="square" alt="shape"/>
    <div class="form">
        <div class="contact-info">
            <h3 class="title">Let's get in touch</h3>
            <p class="text">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe
                dolorum adipisci recusandae praesentium dicta!
            </p>

            <div class="info">
                <div class="information">
                    <img src="Images/location.png" class="icon" alt="" />
                    <p>92 Cherry Drive Uniondale, NY 11553</p>
                </div>
                <div class="information">
                    <img src="Images/email.png" class="icon" alt="" />
                    <p>lorem@ipsum.com</p>
                </div>
                <div class="information">
                    <img src="Images/phone.png" class="icon" alt="" />
                    <p>123-456-789</p>
                </div>
            </div>

            <div class="social-media">
                <p>Connect with us :</p>
                <div class="social-icons">
                    <a href="#">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="#">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                </div>
            </div>
        </div>

        <div class="contact-form">
            <span class="circle one"></span>
            <span class="circle two"></span>

            <form action="contactus.jsp" autocomplete="off">
                <h3 class="title">Contact us</h3>
                <div class="input-container">
                    <input type="text" name="name" class="input" />
                    <label for="">Username</label>
                    <span>Username</span>
                </div>
                <div class="input-container">
                    <input type="email" name="email" class="input" />
                    <label for="">Email</label>
                    <span>Email</span>
                </div>
                <div class="input-container">
                    <input type="tel" name="phone" class="input" />
                    <label for="">Phone</label>
                    <span>Phone</span>
                </div>
                <div class="input-container textarea">
                    <textarea name="message" class="input"></textarea>
                    <label for="">Message</label>
                    <span>Message</span>
                </div>
                <input type="submit" value="Send" class="btn" />
            </form>
        </div>
    </div>
</div>
<script src="contactus.JS"></script>
</body>
</html>
