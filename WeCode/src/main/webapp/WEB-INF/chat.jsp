<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <link rel="stylesheet" href="/CSS/chat.css">
    <title>Chat</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="/CSS/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>


<%--nav-bar--%>
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
            <div style="margin: -2% 20% 0% 0%">
                <div class="search_bar">
                    <%--        <form  class="d-flex justify-content-center" role="search" action="/search" method="get" >--%>
                    <%--          <input style="width: 300px" class="form-control me-3" type="search" placeholder="Search" aria-label="Search" name="keyword">--%>
                    <%--          <button style="background-color:#1abc9c"  class="btn btn" id="searchInput" type="submit" >Search</button>--%>
                    <%--        </form>--%>
                    <input style="width: 300px" class="form-control me-3" aria-label="Search" type="text" id="searchInput" placeholder="Enter company name">
                    <div style="background-color: white; height: 50px; color: #FF5722;margin-bottom: -100px ">
                        <ul id="results"></ul>
                    </div>

            <c:if test="${x == 0}">
                <a style="background-color:#1abc9c; color: white; font-weight: bolder" class="btn btn" aria-current="page" href="/loginpageuser"> Log in </a>
            </c:if>
            <c:if test="${x == 1}">
                <a style="background-color:#1abc9c; color: white; font-weight: bolder"  class="btn btn" aria-current="page" href="/logout"> Log out </a>
            </c:if>

        </div>
    </div>
</nav>

<%--caht--%>
<div class="chat">
    <div class="chat-title">
        <h1>All Developers</h1>

        <figure class="avatar">
            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/156381/profile/profile-80.jpg" /></figure>
    </div>
    <div class="messages">
        <div class="messages-content">
            <c:forEach var="i" items="${allMsges}">
                <h5 style="margin:5px "><c:out value="${i.user.userName}"/>:</h5>

                <h5 style="margin:5px "><c:out value="${i.message}"/></h5>
            </c:forEach>
        </div>
    </div>
    <div class="message-box">

        <form:form action="/chat/new" method="post" modelAttribute="chat">
            <form:input type="hidden" path="user" value="${currentUser.id}"/>
            <p class="error" style="color: red;"><form:errors path="message"/></p>
            <form:textarea type="text" path="message" class="message-input" placeholder="Type message..."></form:textarea>
            <button type="submit" style="background-color: #1abc9c;" class="message-submit">Send</button>
        </form:form>

    </div>

</div>



<script src="JS/chat.js"></script>
<script>
    $(document).ready(function() {
        $("#searchInput").on("input", function() {
            var companyName = $(this).val();

            $.ajax({
                url: "/searchh",
                type: "GET",
                data: {
                    companyName: companyName
                },
                success: function(data) {
                    var resultsList = $("#results");
                    resultsList.empty();
                    data.forEach(function(company) {
                        resultsList.append("<a href='/companies'> <li>" + company.companyName + "</li></a>");
                    });
                }
            });
        });
    });
</script>
</body>
</html>
