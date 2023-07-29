<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Admin Show All Companies</title>
</head>
<body>
    <h1>Admin Control All Companies</h1>
    <table>
        <tr>
            <th>Users ID</th>
            <th>Users Name</th>
            <th>Delete Link</th>
        </tr>
        <c:forEach var="i" items="${allcompanies}">
            <tr>
                <td><c:out value="${i.id}"/></td>
                <td><c:out value="${i.companyName}"/></td>
                <td><a href="/deletecompany/${i.id}">Delete</a></td>

            </tr>
        </c:forEach>
    </table>

</body>
</html>
