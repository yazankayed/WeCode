
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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>

<body class="d-flex flex-column min-vh-100">
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


   


        <c:if test="${x==1}">
          <li class="nav-item">
            <a  id="nav_links" class="nav-link active " aria-current="page" href="/dev/${currentUser.id}">Profile</a>
          </li>
        </c:if>
        <c:if test="${x==0}">
          <li class="nav-item">
            <a  id="nav_links" class="nav-link active " aria-current="page" href="/">Profile</a>
          </li>
        </c:if>

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
        <form  class="d-flex justify-content-center" role="search" action="/search" method="get" >
          <input style="width: 300px" class="form-control me-3" type="search" placeholder="Search" aria-label="Search" name="keyword">
          <button style="background-color:#1abc9c"  class="btn btn" type="submit" >Search</button>
        </form>
      </div>

      <c:if test="${x == 0}">
        <a style="background-color:#1abc9c; color: white; font-weight: bolder" class="btn btn mx-1" aria-current="page" href="/loginpageuser"> User Log in </a>
        <a style="background-color:#1abc9c; color: white; font-weight: bolder" class="btn btn" aria-current="page" href="/company/loginform"> Company Log in </a>
      </c:if>
      <c:if test="${x == 1}">
        <a style="background-color:#1abc9c; color: white; font-weight: bolder"  class="btn btn" aria-current="page" href="/logout"> Log out </a>
      </c:if>



      </div>
    </div>
</nav>

<%--containter --%>
<div id="whiteboard"  class="container">
  <div id="containr">
  <div class="slogan">
    <h1 class="slogan_text">Make The World A Better Place With a Developer.</h1>
  </div>
  <div class="pro_bro">
    <img  id="pro_bro" src="Images/Programming-bro.png" alt="pro-bro">
  </div>
</div>
</div>

<h1 style="color: #1abc9c; margin-top: 100px" class="text-center">About Us</h1>
<div class="projcard-container">

  <div class="projcard projcard-blue">
    <div class="projcard-innerbox">
      <img class="projcard-img" src="https://picsum.photos/800/600?image=1041" />
      <div class="projcard-textbox">
        <div class="projcard-title">Card Title</div>
        <div class="projcard-subtitle">This explains the card in more detail</div>
        <div class="projcard-bar"></div>
        <div class="projcard-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
        <div class="projcard-tagbox">
          <span class="projcard-tag">HTML</span>
          <span class="projcard-tag">CSS</span>
        </div>
      </div>
    </div>
  </div>

  <div class="projcard projcard-red">
    <div class="projcard-innerbox">
      <img class="projcard-img" src="https://picsum.photos/800/600?image=1080" />
      <div class="projcard-textbox">
        <div class="projcard-title">That's Another Card</div>
        <div class="projcard-subtitle">I don't really think that I need to explain anything here</div>
        <div class="projcard-bar"></div>
        <div class="projcard-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
        <div class="projcard-tagbox">
          <span class="projcard-tag">PHP</span>
          <span class="projcard-tag">SQL</span>
          <span class="projcard-tag">Database</span>
        </div>
      </div>
    </div>
  </div>

  <div class="projcard projcard-green">
    <div class="projcard-innerbox">
      <img class="projcard-img" src="https://picsum.photos/800/600?image=1039" />
      <div class="projcard-textbox">
        <div class="projcard-title">And a Third Card</div>
        <div class="projcard-subtitle">You know what this is by now</div>
        <div class="projcard-bar"></div>
        <div class="projcard-description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</div>
        <div class="projcard-tagbox">
          <span class="projcard-tag">Excel</span>
          <span class="projcard-tag">VBA</span>
        </div>
      </div>
    </div>
  </div>

  <div class="projcard projcard-customcolor" style="--projcard-color: #F5AF41;">
    <div class="projcard-innerbox">
      <img class="projcard-img" src="https://picsum.photos/800/600?image=943" />
      <div class="projcard-textbox">
        <div class="projcard-title">Last Card</div>
        <div class="projcard-subtitle">That's the last one. Have a nice day!</div>
        <div class="projcard-bar"></div>
        <div class="projcard-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</div>
        <div class="projcard-tagbox">
          <span class="projcard-tag">iOS</span>
          <span class="projcard-tag">Android</span>
          <span class="projcard-tag">Cordova</span>
        </div>
      </div>
    </div>
  </div>

</div>
</div>
<div >


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
<script type="text/javascript" src="/JS/home.js"></script>
</body>
</html>