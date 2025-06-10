<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<h2>Product List</h2>
<a href="/products/new">Add New Product</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Brand</th>
        <th>Price</th>
        <th>Warehouse</th>
        <th>Stock</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.brand}</td>
            <td>${product.price}</td>
            <td>${product.warehouse.name}</td>
            <td>${product.stock}</td>
            <td>
                <a href="/products/edit/${product.id}">Edit</a>
                <a href="/products/delete/${product.id}" onclick="return confirm('Are you sure?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>