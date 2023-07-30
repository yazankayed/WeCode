<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <%--    <link rel="stylesheet" href="/CSS/contactus.css">--%>



</head>
<body>
<br> <br>
<div class="container" style="width:900px">

    <input type="text" id="searchInput" placeholder="Enter company name">
    <ul id="results"></ul>
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
                        resultsList.append("<li>" + company.companyName + "</li>");
                    });
                }
            });
        });
    });
</script>
</body>
</html>