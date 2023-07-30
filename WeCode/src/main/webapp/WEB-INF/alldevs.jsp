
<%--        <h1>All Developers</h1>--%>
<%--        <table>--%>
<%--            <tr>--%>
<%--                <th>Users ID</th>--%>
<%--                <th>Users Name</th>--%>
<%--            </tr>--%>
<%--            <c:forEach var="i" items="${allDevelopers}">--%>
<%--                <tr>--%>
<%--                    <td><c:out value="${i.id}"/></td>--%>
<%--                    <td><a href="/devs/${i.id}">${i.userName}</a></td>--%>

<%--                </tr>--%>
<%--            </c:forEach>--%>
<%--        </table>--%>


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
    <link rel="stylesheet" href="/CSS/developers.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
            < <div style="margin: -2% 20% 0% 0%">
            <div class="search_bar">
                <%--        <form  class="d-flex justify-content-center" role="search" action="/search" method="get" >--%>
                <%--          <input style="width: 300px" class="form-control me-3" type="search" placeholder="Search" aria-label="Search" name="keyword">--%>
                <%--          <button style="background-color:#1abc9c"  class="btn btn" id="searchInput" type="submit" >Search</button>--%>
                <%--        </form>--%>
                <input style="width: 300px" class="form-control me-3" aria-label="Search" type="text" id="searchInput" placeholder="Enter company name">
                <div style="background-color: white; height: 50px; color: #FF5722;margin-bottom: -100px ">
                    <ul id="results"></ul>
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

<div id="whiteboard"  class="container">
    <div id="containr">
        <main class="page-content">
            <div class="card">
                <div class="content">
                    <h2 class="title text-white bg-black">Front-End</h2>
                    <p class="copy text-white bg-black"></p>
                    <a href="categorry/2" style="background-color: #1abc9c" class="btn btn">All Developers</a>
                </div>
            </div>
            <div class="card">
                <div class="content">
                    <h2  class="title text-white bg-black">Back-End</h2>
                    <p class="copy text-white bg-black"></p>
                    <a href="categorry/1" style="background-color: #1abc9c" class="btn btn">All Developers</a>
                </div>
            </div>
            <div class="card">
                <div class="content">
                    <h2 class="title text-white bg-black">Full-Stack</h2>
                    <p class="copy text-white bg-black"></p>
                    <a href="categorry/5" style="background-color: #1abc9c" class="btn btn">All Developers</a>
                </div>
            </div>
            <div class="card">
                <div class="content">
                    <h2 class="title text-white bg-black">QA</h2>
                    <p class="copy text-white bg-black"></p>
                    <a href="categorry/3" style="background-color: #1abc9c" class="btn btn">All Developers</a>
                </div>
            </div>
            <div class="card">
                <div class="content">
                    <h2 class="title text-white bg-black">Database</h2>
                    <p class="copy text-white bg-black"></p>
                    <a href="categorry/6" style="background-color: #1abc9c" class="btn btn">All Developers</a>
                </div>
            </div>
            <div class="card">
                <div class="content">
                    <h2  class="title text-white bg-black">Data Science</h2>
                    <p class="copy text-white bg-black"></p>
                    <a href="categorry/7" style="background-color: #1abc9c" class="btn btn">All Developers</a>
                </div>
            </div>
            <div class="card">
                <div class="content">
                    <h2 class="title text-white bg-black">DevOps</h2>
                    <p class="copy text-white bg-black"></p>
                    <a href="categorry/4" style="background-color: #1abc9c" class="btn btn">All Developers</a>
                </div>
            </div>
            <div class="card">
                <div class="content">
                    <h2 class="title text-white bg-black">Hardware Developer</h2>
                    <p class="copy text-white bg-black"></p>
                    <a href="categorry/8" style="background-color: #1abc9c" class="btn btn">All Developers</a>
                </div>
            </div>
        </main>

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