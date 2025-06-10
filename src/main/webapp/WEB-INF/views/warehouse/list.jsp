<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Warehouse List</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<h2>Warehouse List</h2>
<a href="/warehouses/new">Add New Warehouse</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Location</th>
        <th>Capacity</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="warehouse" items="${warehouses}">
        <tr>
            <td>${warehouse.id}</td>
            <td>${warehouse.name}</td>
            <td>${warehouse.location}</td>
            <td>${warehouse.capacity}</td>
            <td>
                <a href="/warehouses/edit/${warehouse.id}">Edit</a>
                <a href="/warehouses/delete/${warehouse.id}" onclick="return confirm('Are you sure?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>