<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />
    <title>Admin Show All Users</title>
    <link rel="stylesheet" href="/CSS/adminusers.css">
</head>
<body>
<%--    <h1>Admin Control All Users</h1>--%>
<%--    <table>--%>
<%--        <tr>--%>
<%--            <th>Users ID</th>--%>
<%--            <th>Users Name</th>--%>
<%--            <th>Delete Link</th>--%>
<%--        </tr>--%>
<%--        <c:forEach var="i" items="${allusers}">--%>
<%--            <tr>--%>
<%--                <td><c:out value="${i.id}"/></td>--%>
<%--                <td><c:out value="${i.userName}"/></td>--%>
<%--                <td><a href="/deleteuser/${i.id}">Delete</a></td>--%>

<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--    </table>--%>

<body class="d-flex flex-column min-vh-100">
<%--nav-bar--%>
<nav class="navbar navbar-expand-lg bg-dark">
    <div class="container-fluid">
        <a id="logo_img" class="navbar-brand" href="/"> <img class="logo_img" src="/Images/Logo.png"> </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
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
                            <th>Candidate Name</th>
                            <th class="text-center">Status</th>
                            <th class="action text-right">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="candidates-list">
                            <td class="title">
                                <div class="thumb">
                                    <img class="img-fluid" src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="">
                                </div>
                                <div class="candidate-list-details">
                                    <div class="candidate-list-info">
                                        <div class="candidate-list-title">
                                            <h5 class="mb-0"><a href="#">Brooke Kelly</a></h5>
                                        </div>
                                        <div class="candidate-list-option">
                                            <ul class="list-unstyled">
                                                <li><i class="fas fa-filter pr-1"></i>Information Technology</li>
                                                <li><i class="fas fa-map-marker-alt pr-1"></i>Rolling Meadows, IL 60008</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td class="candidate-list-favourite-time text-center">
                                <a class="candidate-list-favourite order-2 text-danger" href="#"><i class="fas fa-heart"></i></a>
                                <span class="candidate-list-time order-1">Shortlisted</span>
                            </td>
                            <td>
                                <ul class="list-unstyled mb-0 d-flex justify-content-end">
                                    <li><a href="#" class="text-primary" data-toggle="tooltip" title="" data-original-title="view"><i class="far fa-eye"></i></a></li>
                                    <li><a href="#" class="text-info" data-toggle="tooltip" title="" data-original-title="Edit"><i class="fas fa-pencil-alt"></i></a></li>
                                    <li><a href="#" class="text-danger" data-toggle="tooltip" title="" data-original-title="Delete"><i class="far fa-trash-alt"></i></a></li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="candidates-list">
                            <td class="title">
                                <div class="thumb">
                                    <img class="img-fluid" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                                </div>
                                <div class="candidate-list-details">
                                    <div class="candidate-list-info">
                                        <div class="candidate-list-title">
                                            <h5 class="mb-0"><a href="#">Ronald Bradley</a></h5>
                                        </div>
                                        <div class="candidate-list-option">
                                            <ul class="list-unstyled">
                                                <li><i class="fas fa-filter pr-1"></i>Human Resources</li>
                                                <li><i class="fas fa-map-marker-alt pr-1"></i>Monroe Township, NJ 08831</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td class="candidate-list-favourite-time text-center">
                                <a class="candidate-list-favourite order-2 text-danger" href="#"><i class="fas fa-heart"></i></a>
                                <span class="candidate-list-time order-1">Shortlisted</span>
                            </td>
                            <td>
                                <ul class="list-unstyled mb-0 d-flex justify-content-end">
                                    <li><a href="#" class="text-primary" data-toggle="tooltip" title="" data-original-title="view"><i class="far fa-eye"></i></a></li>
                                    <li><a href="#" class="text-info" data-toggle="tooltip" title="" data-original-title="Edit"><i class="fas fa-pencil-alt"></i></a></li>
                                    <li><a href="#" class="text-danger" data-toggle="tooltip" title="" data-original-title="Delete"><i class="far fa-trash-alt"></i></a></li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="candidates-list">
                            <td class="title">
                                <div class="thumb">
                                    <img class="img-fluid" src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="">
                                </div>
                                <div class="candidate-list-details">
                                    <div class="candidate-list-info">
                                        <div class="candidate-list-title">
                                            <h5 class="mb-0"><a href="#">Rafael Briggs</a></h5>
                                        </div>
                                        <div class="candidate-list-option">
                                            <ul class="list-unstyled">
                                                <li><i class="fas fa-filter pr-1"></i>Recruitment Consultancy</li>
                                                <li><i class="fas fa-map-marker-alt pr-1"></i>Haines City, FL 33844</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td class="candidate-list-favourite-time text-center">
                                <a class="candidate-list-favourite order-2 text-danger" href="#"><i class="fas fa-heart"></i></a>
                                <span class="candidate-list-time order-1">Shortlisted</span>
                            </td>
                            <td>
                                <ul class="list-unstyled mb-0 d-flex justify-content-end">
                                    <li><a href="#" class="text-primary" data-toggle="tooltip" title="" data-original-title="view"><i class="far fa-eye"></i></a></li>
                                    <li><a href="#" class="text-info" data-toggle="tooltip" title="" data-original-title="Edit"><i class="fas fa-pencil-alt"></i></a></li>
                                    <li><a href="#" class="text-danger" data-toggle="tooltip" title="" data-original-title="Delete"><i class="far fa-trash-alt"></i></a></li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="candidates-list">
                            <td class="title">
                                <div class="thumb">
                                    <img class="img-fluid" src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="">
                                </div>
                                <div class="candidate-list-details">
                                    <div class="candidate-list-info">
                                        <div class="candidate-list-title">
                                            <h5 class="mb-0"><a href="#">Vickie Meyer</a></h5>
                                        </div>
                                        <div class="candidate-list-option">
                                            <ul class="list-unstyled">
                                                <li><i class="fas fa-filter pr-1"></i>Human Resources</li>
                                                <li><i class="fas fa-map-marker-alt pr-1"></i>Minneapolis, MN 55406</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td class="candidate-list-favourite-time text-center">
                                <a class="candidate-list-favourite order-2 text-danger" href="#"><i class="fas fa-heart"></i></a>
                                <span class="candidate-list-time order-1">Shortlisted</span>
                            </td>
                            <td>
                                <ul class="list-unstyled mb-0 d-flex justify-content-end">
                                    <li><a href="#" class="text-primary" data-toggle="tooltip" title="" data-original-title="view"><i class="far fa-eye"></i></a></li>
                                    <li><a href="#" class="text-info" data-toggle="tooltip" title="" data-original-title="Edit"><i class="fas fa-pencil-alt"></i></a></li>
                                    <li><a href="#" class="text-danger" data-toggle="tooltip" title="" data-original-title="Delete"><i class="far fa-trash-alt"></i></a></li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="candidates-list">
                            <td class="title">
                                <div class="thumb">
                                    <img class="img-fluid" src="https://bootdey.com/img/Content/avatar/avatar4.png" alt="">
                                </div>
                                <div class="candidate-list-details">
                                    <div class="candidate-list-info">
                                        <div class="candidate-list-title">
                                            <h5 class="mb-0"><a href="#">Nichole Haynes</a></h5>
                                        </div>
                                        <div class="candidate-list-option">
                                            <ul class="list-unstyled">
                                                <li><i class="fas fa-filter pr-1"></i>Information Technology</li>
                                                <li><i class="fas fa-map-marker-alt pr-1"></i>Botchergate, Carlisle</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td class="candidate-list-favourite-time text-center">
                                <a class="candidate-list-favourite order-2 text-danger" href="#"><i class="fas fa-heart"></i></a>
                                <span class="candidate-list-time order-1">Shortlisted</span>
                            </td>
                            <td>
                                <ul class="list-unstyled mb-0 d-flex justify-content-end">
                                    <li><a href="#" class="text-primary" data-toggle="tooltip" title="" data-original-title="view"><i class="far fa-eye"></i></a></li>
                                    <li><a href="#" class="text-info" data-toggle="tooltip" title="" data-original-title="Edit"><i class="fas fa-pencil-alt"></i></a></li>
                                    <li><a href="#" class="text-danger" data-toggle="tooltip" title="" data-original-title="Delete"><i class="far fa-trash-alt"></i></a></li>
                                </ul>
                            </td>
                        </tr>
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



</body>
</html>
