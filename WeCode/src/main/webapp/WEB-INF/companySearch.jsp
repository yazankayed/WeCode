<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<head>
  <meta charset="UTF-8">

  <title>Title</title>
  <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <link rel="stylesheet" href="/CSS/home.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
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
        <form  class="d-flex justify-content-center" role="search" action="/search" method="get" >
          <input style="width: 300px" class="form-control me-3" type="search" placeholder="Search" aria-label="Search" name="keyword">
          <button style="background-color:#1abc9c"  class="btn btn" type="submit" >Search</button>
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







<article class="video-sec-wrap">
  <div class="video-sec">
    <ul class="video-sec-middle" id="vid-grid">
      <c:forEach var="i" items="${companies}">
        <li class="thumb-wrap"><a href="">





            <c:if test="${i.id == 1}">
              <a href="/company/${i.id}"><img class="thumb"src="https://www.axsos.me/fileadmin/template/media/axsos-logo.png"alt="${i.companyName}" style="width: 150px; height: auto;"></a>
          </c:if>

          <c:if test="${i.id ==3 }">
            <a href="/company/${i.id}"><img class="thumb" src="https://media.licdn.com/dms/image/C4D0BAQEusQv93gwD2w/company-logo_200_200/0/1667900981277?e=2147483647&v=beta&t=ziViULdwSJKK8dUp59beaJqJZrr7oiZAwxTx5HtJIso"alt="${i.companyName}" style="width: 150px; height: auto;"></a>
          </c:if>

          <c:if test="${i.id ==4 }">
            <a href="/company/${i.id}"><img class="thumb"src="https://upload.wikimedia.org/wikipedia/commons/4/43/Freightos.png"alt="${i.companyName}" style="width: 150px; height: auto;"></a>
          </c:if>
          <c:if test="${i.id ==5 }">
            <a href="/company/${i.id}"><img class="thumb"src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKoAAACqCAMAAAAKqCSwAAAAclBMVEX3+fphm7l4eHh6fH2vzNvk7fKMt8yfwtTb6O3t8/bV5OyGs8mWvNB4qsOCr8fF2uSnx9ff4eFxpcCZvdHr7e670+BpoLyChIXO3+jm6Om20N6Ji4yUlZacnZ2eoKGSkpK2t7e+v8CoqavHyMjZ29yxsrLSlP/BAAACB0lEQVR4nO3W61aqQBiA4aEgQUBUpEy3bWvb/d9izADCwBzaa2GtVe/zy4BPXomTEAAAAAAAAAAAAAAAAAAAAAAAAD9OEtTS6fKVXF58fY/DvKlxuDCq6nXPG2Va0CzfCRGFBod95EqtwnArl2fa0N77s7PAIpOpx3vpT6IPPT/dSaf649Iyncb21Nw4sfalprZSlWpuHZRaU9t/74yplXVPTeq1dVraLLKnBtG8qeqgZtZzVYWp1lNfehyUisg0Wj7Krw1tqessUxuk2ZDvIpMjC/cmm6b1pf1z15YmrpmqK5zxDiAnDp5ttNa29K+zVOzl9+bzp+YPY7Gx9U1+bkt3/dplWE6+YHWj1KnxLe7StNZ9G1V6HJSW1svqS1KX481OXepFpZ77NaG19HtS31Tpsf60U6l3r92axF56i9R1PDa6ZprSJ/V8fdVb1fUThMuRw41SQ882w9Jr67/mr6pr0ul3gK0l1bdjnXxtyOPIIO7eONrSSzdyHrY2R7UYDxdaarDQ9iDn1KNnq825b3+u67d9sIr3UaneGn3mXNWpY2x4SfI9WGNf6rRUb3X8VnVePJpTDe8e3jcr+/uKSj2r0vuLPvTetyYrd2oxaW3O3If/TxVxubWnmkuvrWr5IZ0euT5VRGWur28vsiId7defCgAAAAAAAAAAAAAAAAAAAAAAAPxaH2CNH9rqbgxVAAAAAElFTkSuQmCC"alt="${i.companyName}" style="width: 150px; height: auto;"></a>
          </c:if>
          <c:if test="${i.id ==6 }">
            <a href="/company/${i.id}"><img class="thumb"src="https://media.licdn.com/dms/image/C4D0BAQGZ0V5c-muKYg/company-logo_200_200/0/1519915926261?e=2147483647&v=beta&t=FAXOtggpN90NAFMxiTebUhDs9rM8O5lcHnm1IM07xjA"alt="${i.companyName}" style="width: 150px; height: auto;"></a>
          </c:if>
          <c:if test="${i.id ==7 }">
            <a href="/company/${i.id}"><img class="thumb"src="https://ssw-portal.s3.amazonaws.com/company/71835/dJwX89YbdbeJmhbR2TqtiB.png"alt="${i.companyName}" style="width: 150px; height: auto;"></a>
          </c:if>
          <c:if test="${i.id ==8 }">
            <a href="/company/${i.id}"><img class="thumb"src="https://www.bisan.com/storage/settings/December2020/VkQlzMMJjiZtWCXyVav3.png"alt="${i.companyName}" style="width: 150px; height: auto;"></a>
          </c:if>
          <c:if test="${i.id ==9 }">
            <a href="/company/${i.id}"><img class="thumb"src="https://www.upwork.com/static/marketing/ui/master/img/logo-1200x630.png"alt="${i.companyName}" style="width: 150px; height: auto;"></a>
          </c:if>





          <div class="thumb-info">
            <a class="thumb-title" href="/company/${i.id}"><p class="thumb-title">${i.companyName}</p></a>
          </div>
        </a></li>
      </c:forEach>
    </ul>
  </div>
</article>
<%-- BOOK LOOP --%>


























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
