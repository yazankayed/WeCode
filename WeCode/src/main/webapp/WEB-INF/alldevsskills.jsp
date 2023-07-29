<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>All Developers</title>
</head>
<body>
<h1>All Developers</h1>
<table>
    <tr>
        <th>Users ID</th>
        <th>Users Name</th>
    </tr>
    <c:forEach var="i" items="${allDevelopers}">
        <tr>
            <td><c:out value="${i.id}"/></td>
            <td><a href="/comparingJobVsDev/${i.id}">${i.userName}</a></td>


        </tr>
    </c:forEach>
</table>
</body>
</html>
