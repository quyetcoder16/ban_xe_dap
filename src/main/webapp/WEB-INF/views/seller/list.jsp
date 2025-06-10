<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Seller List</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<h2>Seller List</h2>
<a href="/sellers/new">Add New Seller</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Username</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Address</th>
        <th>Warehouse</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="seller" items="${sellers}">
        <tr>
            <td>${seller.id}</td>
            <td>${seller.username}</td>
            <td>${seller.name}</td>
            <td>${seller.email}</td>
            <td>${seller.phone}</td>
            <td>${seller.address}</td>
            <td>${seller.warehouse.name}</td>
            <td>
                <a href="/sellers/edit/${seller.id}">Edit</a>
                <a href="/sellers/delete/${seller.id}" onclick="return confirm('Are you sure?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>