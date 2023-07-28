w<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
<%-- font awesome cdn like    --%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/CSS/devinfe.css">
</head>
<body>
<%--head section starts --%>
<header>
    <div class="user">
        <img src="${developer.image}" alt="">
        <h3 class="name">${developer.userName}</h3>
        <p class="post">${developer.category.categoryType}</p>
    </div>
    <nav class="navbar">
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#education">Education</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>

</header>

<%-- header section ends--%>
<div id="menu" class="fas fa-bars"></div>

<%-- about section starts--%>
<section class="about" id="about">
    <h1 class="heading"> <span>About</span> Me</h1>
    <div class="row">
        <div class="info">
            <h3><span> name : </span> ${developer.userName} </h3>
            <h3> <span> ID : </span>${developer.idNum}  </h3>
            <h3><span> Position :</span>${developer.category.categoryType} Developer</h3>

            <a href="${developer.cv}" target="_blank"><button class="btn"> Download CV <i class="fas fa-download"></i></button> </a>
        </div>

        <div class="counter">
            <div class="box">
                <span>${developer.experience}+</span>
                <h3>Years of Experience </h3>
            </div>
            <div class="box">
                <span>20+</span>
                <h3>Projects Completed</h3>
            </div>
            <div class="box">
                <span>12+</span>
                <h3>Awards Won</h3>
            </div>
        </div>
    </div>
</section>
<%--about section ends--%>
<%-- education section starts--%>
<section class="education" id="education">
    <h1 class="heading"> <span>Languages</span> </h1>

    <div class="box-container">

        <c:forEach items = ""  var = "lang">

        <div class="box">
            <i class="fa-solid fa-code"></i>
            <h3></h3>
        </div>
        </c:forEach>
    </div>

</section>
<%-- education section ends--%>

<%--Skills--%>

<section class="education" id="education">
    <h1 class="heading"> <span>Skills</span> </h1>



</section>

<%--Contact section starts--%>
<section class="contact" id="contact">
    <h1 class="heading"> My<span>Contacts</span></h1>

        <div class="row">
            <div class="content">

                <h3 class="title"> contact info</h3>

                <div class="info">

                    <h3><i class="fas fa-envelope"></i> ${developer.email}</h3>
                    <h3><i class="fas fa-phone"></i> 009725566778</h3>
                    <h3><i class="fas fa-phone"></i> 009725566778</h3>
                    <h3><i class="fas fa-map-marker-alt"></i>${developer.location}</h3>
                </div>
            </div>
        </div>
</section>
<%--Contact section ends--%>

<%--scroll top button--%>
<a href="#home" class="top">
    <img src=""> alt="">
</a>










<%--jquery cdn link--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/react/18.2.0/umd/react.production.min.js"></script>
<script src="JS/devinfo.js"></script>
</body>
</html>
