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
        <img src="/Images/userimg.jpeg" alt="">
        <h3 class="name"> Yousef Shadid</h3>
        <p class="post"> fort end develoloper</p>
    </div>
    <nav class="navbar">
        <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#education">Education</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>

</header>

<%-- header section ends--%>
<div id="menu" class="fas fa-bars"></div>
<%-- home section strats--%>
<section class="home" id="home">
    <h3> HI THERE !</h3>
    <H1> I`M <span> Yousef shadid</span></H1>
    <P>hkgkjhkjhkjhkjhkjhkjk</P>
    <a href="#about"> <button class="btn" > About Me<i class="fas fa-user"></i></button></a>

</section>

<%-- home section ends--%>
<section class="about" id="about">
    <h1 class="heading"> <span>About</span> Me</h1>
    <div class="row">
        <div class="info">
            <h3><span> name : </span> Yousef Shadid</h3>
            <h3><span> Age :</span> 26</h3>
            <h3><span> Qualification : </span> BMS</h3>
            <h3><span> Post :</span> Front end Developer</h3>
            <h3><span> Language</span> Arabic</h3>
            <a href="#"><button class="btn"> Download CV <i class="fas fa-download"></i></button> </a>
        </div>

        <div class="counter">
            <div class="box">
                <span>2+</span>
                <h3>Years of Experiece </h3>
            </div>
            <div class="box">
                <span>100+</span>
                <h3>Project Completed</h3>
            </div>

            <div class="box">
                <span>430+</span>
                <h3>Happy Clients</h3>
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
    <h1 class="heading"> My<span>Education</span> </h1>

    <div class="box-container">

        <div class="box">
          <i class="fas fa-graduation-cap"></i>
            <span>2016</span>
            <h3> Front edn Development</h3>
            <p>sadasdasdsedtrfhuijokldrftgyhujifghuijo</p>
        </div>

        <div class="box">
            <i class="fas fa-graduation-cap"></i>
            <span>2017</span>
            <h3> Front edn Development</h3>
            <p>sadasdasdsedtrfhuijokldrftgyhujifghuijo</p>
        </div>

        <div class="box">
            <i class="fas fa-graduation-cap"></i>
            <span>2018</span>
            <h3> Front edn Development</h3>
            <p>sadasdasdsedtrfhuijokldrftgyhujifghuijo</p>
        </div>

        <div class="box">
            <i class="fas fa-graduation-cap"></i>
            <span>2019</span>
            <h3> Front edn Development</h3>
            <p>sadasdasdsedtrfhuijokldrftgyhujifghuijo</p>
        </div>

        <div class="box">
            <i class="fas fa-graduation-cap"></i>
            <span>2020</span>
            <h3> Front edn Development</h3>
            <p>sadasdasdsedtrfhuijokldrftgyhujifghuijo</p>
        </div>

        <div class="box">
            <i class="fas fa-graduation-cap"></i>
            <span>2021</span>
            <h3> Front edn Development</h3>
            <p>sadasdasdsedtrfhuijokldrftgyhujifghuijo</p>
        </div>


    </div>

</section>
<%-- education section ends--%>

<%--Contact section starts--%>
<section class="contact" id="contact">
    <h1 class="heading"> My<span>Contact</span> Me</h1>

        <div class="row">
            <div class="content">

                <h3 class="title"> contact info</h3>

                <div class="info">

                    <h3><i class="fas fa-envelope"></i> Yosuef@Gmail.com</h3>
                    <h3><i class="fas fa-phone"></i> 009725566778</h3>
                    <h3><i class="fas fa-phone"></i> 009725566778</h3>
                    <h3><i class="fas fa-map-marker-alt"></i> Ammad,Jordan</h3>
                </div>
            </div>

            <form action="text">
                <input type="text" placeholder="name" class="box">
                <input type="text" placeholder="email" class="box">
                <input type="text" placeholder="project" class="box">
                <textarea name="" id="" cols="30" rows="10" class="box massage" placeholder="message"></textarea>
                <button type="submit" class="btn"> Send<i class="fas fa-paper-plane"></i></button>
            </form>
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
