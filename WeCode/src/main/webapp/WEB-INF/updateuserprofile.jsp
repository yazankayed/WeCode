<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <%@ page isErrorPage="true" %>
                    <html>

                    <head>
                        <title>Update Profile</title>
                        <meta charset="UTF-8">
                        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
                        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
                            rel="stylesheet"
                            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
                            crossorigin="anonymous">
                        <link rel="stylesheet" href="/CSS/skills.css">
                        <link rel="stylesheet"
                            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

                        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
                            rel="stylesheet"
                            integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
                            crossorigin="anonymous">
                    </head>

                    <body class="d-flex flex-column min-vh-100">
                        <nav class="navbar navbar-expand-lg bg-dark">
                            <div class="container-fluid">
                                <a id="logo_img" class="navbar-brand" href="/"> <img class="logo_img"
                                        src="/Images/Logo.png"> </a>
                                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                    aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                    <ul class="navbar-nav  me-auto mb-2 mb-lg-0">
                                        <li class="nav-item">
                                            <a id="nav_links" class="nav-link active" aria-current="page"
                                                href="/">Home</a>
                                        </li>
                                        <li class="nav-item">
                                            <a id="nav_links" class="nav-link active " aria-current="page"
                                                href="/dev/${currentUser.id}">Profile</a>
                                        </li>
                                        <li class="nav-item">
                                            <a id="nav_links" class="nav-link active " aria-current="page"
                                                href="/categories">Developers</a>
                                        </li>
                                        <li class="nav-item">
                                            <a id="nav_links" class="nav-link active  " aria-current="page"
                                                href="/companies">Companies</a>
                                        </li>
                                        <li class="nav-item">
                                            <a id="nav_links" class="nav-link active " aria-current="page"
                                                href="/contactus">Contact Us</a>
                                        </li>
                                        <li class="nav-item">
                                            <a id="nav_links" class="nav-link active " aria-current="page"
                                                href="/chat">Chat</a>
                                        </li>
                                    </ul>
                                    <div class="search_bar">
                                        <form class="d-flex justify-content-center" role="search">
                                            <input style="width: 300px" class="form-control me-3" type="search"
                                                placeholder="Search" aria-label="Search">
                                            <button style="background-color:#1abc9c" class="btn btn" type="submit"
                                                hidden>Search</button>
                                        </form>
                                    </div>

                                    <c:if test="${x == 0}">
                                        <a style="background-color:#1abc9c; color: white; font-weight: bolder"
                                            class="btn btn" aria-current="page" href="/loginpageuser"> Log in </a>
                                    </c:if>
                                    <c:if test="${x == 1}">
                                        <a style="background-color:#1abc9c; color: white; font-weight: bolder"
                                            class="btn btn" aria-current="page" href="/logout"> Log out </a>
                                    </c:if>

                                </div>
                            </div>
                        </nav>


                        <div style="margin-top: 50px" class="containr">
                            <form action="/updateuser" method="post">
                                <input type="hidden" name="_method" value="PATCH">
                                <h2>Continue Setting-up your Profile</h2>
                                <div class="form-group row mb-3">
                                    <label class="col-sm-4 col-form-label">User Name:</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="userName" value="${currentUser.userName}"
                                            class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group row mb-3">
                                    <label class="col-sm-4 col-form-label">Email:</label>
                                    <div class="col-sm-8">
                                        <input type="email" value="${currentUser.email}" name="email"
                                            class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group row mb-3">
                                    <label class="col-sm-4 col-form-label">ID Number:</label>
                                    <div class="col-sm-8">
                                        <input type="Number" name="idNum" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group row mb-3">
                                    <label class="col-sm-4 col-form-label"> Experience:</label>

                                    <div class="col-sm-8">
                                        <input type="Number" name="experience" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group row mb-3">
                                    <label class="col-sm-4 col-form-label">Location:</label>

                                    <div class="col-sm-8">
                                        <input type="text" name="location" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group row mb-3">
                                    <label class="col-sm-4 col-form-label">CV:</label>

                                    <div class="col-sm-8">
                                        <input type="text" name="cv" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group row mb-3">
                                    <label class="col-sm-4 col-form-label">Image:</label>

                                    <div class="col-sm-8">
                                        <input type="text" name="image" class="form-control" />
                                    </div>
                                </div>

                                <div class="form-group row mb-3">
                                    <label name="category" class="col-sm-4 col-form-label">Status:</label>
                                    <div class="col-sm-8">
                                        <select name="status" class="form-select" aria-label="Default select example">
                                            <option value="false">Unemployed</option>
                                            <option value="true">Employed</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row mb-3">
                                    <label name="category" class="col-sm-4 col-form-label">Category:</label>
                                    <div class="col-sm-8">
                                        <select name="category" class="form-select" aria-label="Default select example">
                                            <option selected>select Category</option>
                                            <c:forEach var="i" items="${allcategories}">
                                                <option value="${i.id}">${i.categoryType}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>


                                <div style="display: flex">

                                    <label class="col-sm-4 col-form-label">Languages:</label>
                                    <div class="form-group row mb-3">
                                        <label class="col-sm-4 col-form-label">Python:</label>
                                        <div class="col-sm-8">
                                            <input type="checkbox" name="python" />
                                        </div>
                                    </div>
                                    <div class="form-group row mb-3">
                                        <label class="col-sm-4 col-form-label">Java:</label>
                                        <div class="col-sm-8">
                                            <input type="checkbox" name="java" />
                                        </div>
                                    </div>
                                    <div class="form-group row mb-3">
                                        <label class="col-sm-4 col-form-label">JavaScript:</label>
                                        <div class="col-sm-8">
                                            <input type="checkbox" name="javascript" />
                                        </div>
                                    </div>
                                    <div class="form-group row mb-3">
                                        <label class="col-sm-4 col-form-label">PHP:</label>
                                        <div class="col-sm-8">
                                            <input type="checkbox" name="php" />
                                        </div>
                                    </div>
                                    <div class="form-group row mb-3">
                                        <label class="col-sm-4 col-form-label">.NET:</label>
                                        <div class="col-sm-8">
                                            <input type="checkbox" name="net" />
                                        </div>
                                    </div>
                                    <div class="form-group row mb-3">
                                        <label class="col-sm-4 col-form-label">C++:</label>
                                        <div class="col-sm-8">
                                            <input type="checkbox" name="Cp" />
                                        </div>
                                    </div>
                                    <div class="form-group row mb-3">
                                        <label class="col-sm-4 col-form-label">C:</label>
                                        <div class="col-sm-8">
                                            <input type="checkbox" name="C" />
                                        </div>
                                    </div>
                                    <div class="form-group row mb-3">
                                        <label class="col-sm-4 col-form-label">C#:</label>
                                        <div class="col-sm-8">
                                            <input type="checkbox" name="Cs" />
                                        </div>
                                    </div>
                                </div>
                                <button style="color: white;background-color: #1abc9c" type="submit" class="btn btn">Update</button>
                            </form>
                        </div>


                        <div class=" navbar mt-auto bg-dark">
                            <footer
                                class="d-flex flex-wrap justify-content-between align-items-center py-3 my-0 border-top">
                                <div class="col-md-4 d-flex align-items-center">
                                    <a href="/" class="mb-3 me-2 mb-md-0 text-body-secondary text-decoration-none lh-1">
                                        <svg class="bi" width="30" height="24">
                                            <use xlink:href="#bootstrap" />
                                        </svg>
                                    </a>
                                    <p class="mb-3 mb-md-0 text-white">&copy; 2023 Company, Inc</p>
                                </div>

                                <div class="nav col-md-4 d-flex justify-content-md-center ">
                                    <img style="width: 7%" class="mx-3" id="facebook" src="/Images/Facebook-logo.png"
                                        alt="facebook-icon">
                                    <img style="width: 7%" class="mx-3 " src="/Images/Instagram.png"
                                        alt="instagram-icon">
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