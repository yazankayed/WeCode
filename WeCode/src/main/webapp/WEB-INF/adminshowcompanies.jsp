<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Admin Show All Companies</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />
    <link rel="stylesheet" href="/CSS/adminusers.css">
</head>
<body class="d-flex flex-column min-vh-100">

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
                    <a  id="nav_links" class="nav-link active " aria-current="page" href="#">Profile</a>
                </li>
                <li class="nav-item">
                    <a  id="nav_links" class="nav-link active " aria-current="page" href="/adminshowusers">Developers</a>
                </li>
                <li class="nav-item">
                    <a  id="nav_links" class="nav-link active  " aria-current="page" href="/adminshowcompanies">Companies</a>
                </li>
                <li class="nav-item">
                    <a id="nav_links" class="nav-link active " aria-current="page" href="#">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a id="nav_links"  class="nav-link active " aria-current="page" href="#">Chat</a>
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
                    </div></div></div>

            <c:if test="${x == 0}">
                <a style="background-color:#1abc9c; color: white; font-weight: bolder" class="btn btn" aria-current="page" href="/loginpageuser"> Log in </a>
            </c:if>
            <c:if test="${x == 1}">
                <a style="background-color:#1abc9c; color: white; font-weight: bolder"  class="btn btn" aria-current="page" href="/logout"> Log out </a>
            </c:if>



        </div>
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
                                <th>Company Name</th>
                                <th class="text-center">Email</th>
                                <th class="action text-right">Action</th>
                            </tr>
                            </thead>
                            <tbody>


                            <c:forEach var="i" items="${allcompanies}">



                                <tr class="candidates-list">
                                    <td class="title">
                                        <div class="thumb">

                                            <c:if test="${i.id ==1 }">
                                                <img class="img-fluid" src="https://www.axsos.me/fileadmin/template/media/axsos-logo.png" alt="">
                                            </c:if>
                                            <c:if test="${i.id ==3 }">
                                                <img class="img-fluid" src="https://media.licdn.com/dms/image/C4D0BAQEusQv93gwD2w/company-logo_200_200/0/1667900981277?e=2147483647&v=beta&t=ziViULdwSJKK8dUp59beaJqJZrr7oiZAwxTx5HtJIso" alt="">
                                            </c:if>
                                            <c:if test="${i.id ==4 }">
                                                <img class="img-fluid" src="https://upload.wikimedia.org/wikipedia/commons/4/43/Freightos.png" alt="">
                                            </c:if>

                                            <c:if test="${i.id ==5 }">
                                                <img class="img-fluid" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKoAAACqCAMAAAAKqCSwAAAAclBMVEX3+fphm7l4eHh6fH2vzNvk7fKMt8yfwtTb6O3t8/bV5OyGs8mWvNB4qsOCr8fF2uSnx9ff4eFxpcCZvdHr7e670+BpoLyChIXO3+jm6Om20N6Ji4yUlZacnZ2eoKGSkpK2t7e+v8CoqavHyMjZ29yxsrLSlP/BAAACB0lEQVR4nO3W61aqQBiA4aEgQUBUpEy3bWvb/d9izADCwBzaa2GtVe/zy4BPXomTEAAAAAAAAAAAAAAAAAAAAAAAAD9OEtTS6fKVXF58fY/DvKlxuDCq6nXPG2Va0CzfCRGFBod95EqtwnArl2fa0N77s7PAIpOpx3vpT6IPPT/dSaf649Iyncb21Nw4sfalprZSlWpuHZRaU9t/74yplXVPTeq1dVraLLKnBtG8qeqgZtZzVYWp1lNfehyUisg0Wj7Krw1tqessUxuk2ZDvIpMjC/cmm6b1pf1z15YmrpmqK5zxDiAnDp5ttNa29K+zVOzl9+bzp+YPY7Gx9U1+bkt3/dplWE6+YHWj1KnxLe7StNZ9G1V6HJSW1svqS1KX481OXepFpZ77NaG19HtS31Tpsf60U6l3r92axF56i9R1PDa6ZprSJ/V8fdVb1fUThMuRw41SQ882w9Jr67/mr6pr0ul3gK0l1bdjnXxtyOPIIO7eONrSSzdyHrY2R7UYDxdaarDQ9iDn1KNnq825b3+u67d9sIr3UaneGn3mXNWpY2x4SfI9WGNf6rRUb3X8VnVePJpTDe8e3jcr+/uKSj2r0vuLPvTetyYrd2oxaW3O3If/TxVxubWnmkuvrWr5IZ0euT5VRGWur28vsiId7defCgAAAAAAAAAAAAAAAAAAAAAAAPxaH2CNH9rqbgxVAAAAAElFTkSuQmCC" alt="">
                                            </c:if>

                                            <c:if test="${i.id ==6 }">
                                                <img class="img-fluid" src="https://media.licdn.com/dms/image/C4D0BAQGZ0V5c-muKYg/company-logo_200_200/0/1519915926261?e=2147483647&v=beta&t=FAXOtggpN90NAFMxiTebUhDs9rM8O5lcHnm1IM07xjA" alt="">
                                            </c:if>

                                            <c:if test="${i.id ==7 }">
                                                <img class="img-fluid" src="https://ssw-portal.s3.amazonaws.com/company/71835/dJwX89YbdbeJmhbR2TqtiB.png" alt="">
                                            </c:if>

                                            <c:if test="${i.id ==8 }">
                                                <img class="img-fluid" src="https://www.bisan.com/storage/settings/December2020/VkQlzMMJjiZtWCXyVav3.png" alt="">
                                            </c:if>

                                            <c:if test="${i.id ==9 }">
                                                <img class="img-fluid" src="https://www.upwork.com/static/marketing/ui/master/img/logo-1200x630.png" alt="">
                                            </c:if>




                                        </div>
                                        <div class="candidate-list-details">
                                            <div class="candidate-list-info">
                                                <div class="candidate-list-title">
                                                    <h5 class="mb-0"><a href="/company/${i.id}"><c:out value="${i.companyName}"/></a></h5>
                                                </div>

                                            </div>
                                        </div>
                                    </td>
                                    <td class="candidate-list-favourite-time text-center">
                                        <a class="candidate-list-favourite order-2 text-danger" href="#"><i class="fas fa-heart"></i></a>
                                        <span class="candidate-list-time order-1">
                                                ${i.email}
                                </span>
                                    </td>
                                    <td>
                                        <ul class="list-unstyled mb-0 d-flex justify-content-end">

                                            <li><a href="/deletecompany/${i.id}" class="text-danger" data-toggle="tooltip" title="" data-original-title="Delete"><i class="far fa-trash-alt"></i></a></li>
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
