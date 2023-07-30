
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ page isErrorPage="true" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons">
        <link rel="stylesgeet" href="https://rawgit.com/creativetimofficial/material-kit/master/assets/css/material-kit.css">
        <title>Login and Registration</title>
        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="stylesheet" href="/CSS/companies.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    </head>

    <body class="d-flex flex-column min-vh-100">
    <%--nav-bar--%>
    <c:if test="${t == 0}">
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
                            <button style="background-color:#1abc9c"  class="btn btn" type="submit" hidden>Search</button>
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
    </c:if>
    <c:if test="${t == 1}">
        <nav class="navbar navbar-expand-lg bg-dark">
            <div class="container-fluid">
                <a id="logo_img" class="navbar-brand" href="/"> <img class="logo_img" src="/Images/Logo.png"> </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav  me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a id="nav_links" class="nav-link active" aria-current="page" href="/successcompany">Home</a>
                        </li>
                        <li class="nav-item">
                            <a  id="nav_links" class="nav-link active " aria-current="page" href="/company/${currentCompany.id}">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a  id="nav_links" class="nav-link active " aria-current="page" href="/showalldev">Developers</a>
                        </li>
                        <li class="nav-item">
                            <a id="nav_links" class="nav-link active " aria-current="page" href="/byskillsform/new">Hire By Skills</a>
                        </li>
                    </ul>
                    <div class="search_bar">
                        <form  class="d-flex justify-content-center" role="search">
                            <input style="width: 300px" class="form-control me-3" type="search" placeholder="Search" aria-label="Search">
                            <button style="background-color:#1abc9c"  class="btn btn" type="submit" hidden>Search</button>
                        </form>
                    </div>

                    <c:if test="${currentCompany == null}">
                        <a style="background-color:#1abc9c; color: white; font-weight: bolder" class="btn btn mx-1" aria-current="page" href="/loginpageuser"> User Log in </a>
                        <a style="background-color:#1abc9c; color: white; font-weight: bolder" class="btn btn" aria-current="page" href="/company/loginform"> Company Log in </a>
                    </c:if>
                    <c:if test="${currentCompany =! null}">
                        <a style="background-color:#1abc9c; color: white; font-weight: bolder"  class="btn btn" aria-current="page" href="/logoutcompany"> Log out </a>
                    </c:if>



                </div>
            </div>
        </nav>
    </c:if>

    <div class="container">
        <div class="box">
            <img src="${imag}" alt="">
            <ul>
                <li>${comp.companyName}</li>
                <li>${u} years</li>
                <li>Social Media</li>
                <li><i style="font-size:24px" class="fa"></i>
                    <i style="font-size:24px" class="fa"></i>
                    <i style="font-size:24px" class="fa"></i></li>
            </ul>
        </div>
        <div class="About">
            <ul>
                <h1>About</h1>
            </ul>

            <ul>
                <h3>Country</h3>
                <li>Palestine</li>
            </ul>
            <ul>
                <h3>More Info</h3>
                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its
                    layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using
                    'Content here, content here', making it look like readable English. Many desktop publishing packages and web page
                    editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites
                    still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose
                    (injected humour and the like).</p>
            </ul>
            <ul>
                <h3>Contact</h3>
                <li>${comp.email}</li>
            </ul>
        </div>
    </div>



































    <%--footer--%>
    <div class=" navbar mt-auto bg-dark">
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
    <script type="text/javascript" src="/JS/developers.js"></script>
    </body>
    </html>

