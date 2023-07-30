<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ page isErrorPage="true" %>
          <html>

          <head>
            <title>Skills</title>
            <meta charset="UTF-8">
            <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
              crossorigin="anonymous">
            <link rel="stylesheet" href="/CSS/skills.css">
            <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
              crossorigin="anonymous">
          </head>

          <body class="d-flex flex-column min-vh-100">
            <nav class="navbar navbar-expand-lg bg-dark">
              <div class="container-fluid">
                <a id="logo_img" class="navbar-brand" href="/"> <img class="logo_img" src="/Images/Logo.png"> </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                  data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                  aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav  me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                      <a id="nav_links" class="nav-link active" aria-current="page" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                      <a id="nav_links" class="nav-link active " aria-current="page"
                        href="/dev/${currentUser.id}">Profile</a>
                    </li>
                    <li class="nav-item">
                      <a id="nav_links" class="nav-link active " aria-current="page" href="/categories">Developers</a>
                    </li>
                    <li class="nav-item">
                      <a id="nav_links" class="nav-link active  " aria-current="page" href="/companies">Companies</a>
                    </li>
                    <li class="nav-item">
                      <a id="nav_links" class="nav-link active " aria-current="page" href="/contactus">Contact Us</a>
                    </li>
                    <li class="nav-item">
                      <a id="nav_links" class="nav-link active " aria-current="page" href="/chat">Chat</a>
                    </li>
                  </ul>
                  <div class="search_bar">
                    <form  class="d-flex justify-content-center" role="search" action="/search" method="get" >
                      <input style="width: 300px" class="form-control me-3" type="search" placeholder="Search" aria-label="Search" name="keyword">
                      <button style="background-color:#1abc9c"  class="btn btn" type="submit" >Search</button>
                    </form>
                  </div>

                  <c:if test="${x == 0}">
                    <a style="background-color:#1abc9c; color: white; font-weight: bolder" class="btn btn"
                      aria-current="page" href="/loginpageuser"> Log in </a>
                  </c:if>
                  <c:if test="${x == 1}">
                    <a style="background-color:#1abc9c; color: white; font-weight: bolder" class="btn btn"
                      aria-current="page" href="/logout"> Log out </a>
                  </c:if>

                </div>
              </div>
            </nav>


            <div style="margin-top: 50px" class="containr">


              <h1>New Skills</h1>
              <form:form action="/createskills" method="post"  class="range-form" modelAttribute="skills">

                <div class="form-group">
                  <div class="form-group row mb-3">
                    <label class="col-sm-4 col-form-label">Leader Ship:</label>
                    <form:errors path="leaderShip" style="color:red;" />
                    <div class="col-sm-8">
                      <form:input  min="0" max="100" path="leaderShip" type="Number" class="form-control" />
                    </div>
                  </div>
                </div>

                <div class="form-group">
                  <div class="form-group row mb-3">
                    <label class="col-sm-4 col-form-label">Time Management:</label>
                    <form:errors path="timeManagement" style="color:red;" />
                    <div class="col-sm-8">
                      <form:input  min="0" max="100" path="timeManagement" type="Number" class="form-control" />
                    </div>
                  </div>
                </div>

                    <div class="form-group">
                      <div class="form-group row mb-3">
                        <label class="col-sm-4 col-form-label"> Team Work:</label>
                        <form:errors path="teamWork" style="color:red;" />
                        <div class="col-sm-8">
                          <form:input  min="0" max="100" path="teamWork" type="Number" class="form-control" />
                        </div>
                      </div>
                    </div>

                      <div class="form-group">
                        <div class="form-group row mb-3">
                          <label class="col-sm-4 col-form-label"> Commitment:</label>
                          <form:errors path="commitment" style="color:red;" />
                          <div class="col-sm-8">
                            <form:input  min="0" max="100" path="commitment" type="Number" class="form-control" />
                          </div>
                        </div>
                      </div>

                        <div class="form-group">
                          <div class="form-group row mb-3">
                            <label class="col-sm-4 col-form-label"> Problem Solving:</label>
                            <form:errors path="problemSolving" style="color:red;" />
                            <div class="col-sm-8">
                              <form:input  min="0" max="100" path="problemSolving" type="Number" class="form-control" />
                            </div>
                          </div>
                        </div>

                          <div class="form-group">
                            <div class="form-group row mb-3">
                              <label class="col-sm-4 col-form-label"> Working Under Pressure:</label>
                              <form:errors path="workingUnderPressure" style="color:red;" />
                              <div class="col-sm-8">
                                <form:input  min="0" max="100"  path="workingUnderPressure" type="Number" class="form-control" />
                              </div>
                            </div>
                          </div>

                            <div class="form-group">
                              <div class="form-group row mb-3">
                                <label class="col-sm-4 col-form-label"> Research Skills:</label>
                                <form:errors path="researchSkills" style="color:red;" />
                                <div class="col-sm-8">
                                  <form:input  min="0" max="100" path="researchSkills" type="Number" class="form-control" />
                                </div>
                              </div>
                            </div>

                              <div class="form-group">
                                <div class="form-group row mb-3">
                                  <label class="col-sm-4 col-form-label"> Communication Skills:</label>
                                  <form:errors path="communicationSkills" style="color:red;" />
                                  <div class="col-sm-8">
                                    <form:input  min="0" max="100" path="communicationSkills" type="Number" class="form-control" />
                                  </div>
                                </div>
                              </div>

                                <div class="form-group">
                                  <div class="form-group row mb-3">
                                    <label class="col-sm-4 col-form-label"> self Sufficiency:</label>
                                    <form:errors path="selfSufficient" style="color:red;" />
                                    <div class="col-sm-8">
                                      <form:input path="selfSufficient" min="0" max="100"  type="Number" class="form-control" />
                                    </div>
                                  </div>
                                </div>
                                  <form:input type="hidden" path="user" value="${currentUser.id}" />

                                  <button style="color: white;background-color: #1abc9c" type="submit" class="btn btn">Submit</button>
                                  
              </form:form>
            </div>

            <div class=" navbar mt-auto bg-dark">
              <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-0 border-top">
                <div class="col-md-4 d-flex align-items-center">
                  <a href="/" class="mb-3 me-2 mb-md-0 text-body-secondary text-decoration-none lh-1">
                    <svg class="bi" width="30" height="24">
                      <use xlink:href="#bootstrap" />
                    </svg>
                  </a>
                  <p class="mb-3 mb-md-0 text-white">&copy; 2023 Company, Inc</p>
                </div>

                <div class="nav col-md-4 d-flex justify-content-md-center ">
                  <img style="width: 7%" class="mx-3" id="facebook" src="/Images/Facebook-logo.png" alt="facebook-icon">
                  <img style="width: 7%" class="mx-3 " src="/Images/Instagram.png" alt="instagram-icon">
                  <img style="width: 7%" class="mx-3" src="/Images/twitter.png" alt="facebook-icon">
                </div>
              </footer>
            </div>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
              integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
              crossorigin="anonymous"></script>
            <script type="text/javascript" src="/JS/skills.js"></script>


          </body>

          </html>