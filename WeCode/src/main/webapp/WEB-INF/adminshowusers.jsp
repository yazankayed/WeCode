<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />
    <link rel="stylesheet" href="/CSS/adminusers.css">
    <title>Admin Show All Users</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="/CSS/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
                    <a  id="nav_links" class="nav-link active " aria-current="page" href="/adminshowusers">Developers</a>
                </li>
                <li class="nav-item">
                    <a  id="nav_links" class="nav-link active  " aria-current="page" href="/adminshowcompanies">Companies</a>
                </li>
            </ul>

            <c:if test="${x == 0}">
                <a style="background-color:#1abc9c; color: white; font-weight: bolder" class="btn btn" aria-current="page" href="/loginpageuser"> Log in </a>
            </c:if>
            <c:if test="${x == 1}">
                <a style="background-color:#1abc9c; color: white; font-weight: bolder"  class="btn btn" aria-current="page" href="/logout"> Log out </a>
            </c:if>



        </div>
    </div>
</nav>


<div class="container mt-3 mb-4">
    <div class="col-lg-9 mt-4 mt-lg-0">
        <div class="row">
            <div class="col-md-12">
                <div class="user-dashboard-info-box table-responsive mb-0 bg-white p-4 shadow-sm">
                    <table class="table manage-candidates-top mb-0">
                        <thead>

                        <tr>
                            <th>User Name</th>
                            <th class="text-center">Status</th>
                            <th class="action text-right">Action</th>
                        </tr>
                        </thead>
                        <tbody>


                        <c:forEach var="i" items="${allusers}">



                        <tr class="candidates-list">
                            <td class="title">
                                <div class="thumb">
                                    <img class="img-fluid" src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="">
                                </div>
                                <div class="candidate-list-details">
                                    <div class="candidate-list-info">
                                        <div class="candidate-list-title">
                                            <h5 class="mb-0"><a href="/dev/${i.id}"><c:out value="${i.userName}"/></a></h5>
                                        </div>
                                        <div class="candidate-list-option">
                                            <ul class="list-unstyled">
                                                <li><i class="fas fa-filter pr-1"></i>${i.category.categoryType}</li>
                                                <li><i class="fas fa-map-marker-alt pr-1"></i>${i.location}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td class="candidate-list-favourite-time text-center">
                                <a class="candidate-list-favourite order-2 text-danger" href="#"><i class="fas fa-heart"></i></a>
                                <span class="candidate-list-time order-1">
                                    <c:if test="${i.status == false}">
                                        Unemployed
                                    </c:if>
                                    <c:if test="${i.status == true}">
                                        Employed
                                        </c:if>
                                </span>
                            </td>
                            <td>
                                <ul class="list-unstyled mb-0 d-flex justify-content-end">

                                    <li><a href="/deleteuser/${i.id}" class="text-danger" data-toggle="tooltip" title="" data-original-title="Delete"><i class="far fa-trash-alt"></i></a></li>
                                </ul>
                            </td>
                        </tr>
                        </c:forEach>







                        </tbody>
                    </table>
                    <div class="text-center mt-3 mt-sm-3">
                        <ul class="pagination justify-content-center mb-0">
                            <li class="page-item disabled"> <span class="page-link">Prev</span> </li>
                            <li class="page-item active" aria-current="page"><span class="page-link">1 </span> <span class="sr-only">(current)</span></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">...</a></li>
                            <li class="page-item"><a class="page-link" href="#">25</a></li>
                            <li class="page-item"> <a class="page-link" href="#">Next</a> </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--foter--%>
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
