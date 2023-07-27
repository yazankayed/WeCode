<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="about-section">
    <h1>About Us Page</h1>
    <p>Some text about who we are and what we do.</p>
    <p>Resize the browser window to see that this page is responsive by the way.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
    <div class="column">
        <div class="card">
            <img src="/w3images/team1.jpg" alt="Rizek">
            <div class="container">
                <h2>Rizek</h2>
                <p class="title">CEO & Founder</p>
                <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                <p>jane@example.com</p>
                <p><button class="button">Contact</button></p>
            </div>
            <div class="card">
                <img src="/w3images/team1.jpg" alt="Yazan" >
                <div class="container">
                    <h2>Yazan</h2>
                    <p class="title">CEO & Founder</p>
                    <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                    <p>jane@example.com</p>
                    <p><button class="button">Contact</button></p>
                </div>

            </div>
        </div>

        <div class="column">
            <div class="card">
                <img src="/w3images/team2.jpg" alt="Kareem">
                <div class="container">
                    <h2>kareem</h2>
                    <p class="title">Art Director</p>
                    <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                    <p>mike@example.com</p>
                    <p><button class="button">Contact</button></p>
                </div>
            </div>
        </div>

        <div class="column">
            <div class="card">
                <img src="/w3images/team3.jpg" alt="Yousef" >
                <div class="container">
                    <h2>Yousef</h2>
                    <p class="title">Designer</p>
                    <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                    <p>john@example.com</p>
                    <p><button class="button">Contact</button></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
