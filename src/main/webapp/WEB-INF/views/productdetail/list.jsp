<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Product Detail List</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<h2>Product Detail List</h2>
<a href="/productdetails/new">Add New Product Detail</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Product</th>
        <th>Color</th>
        <th>Size</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="productDetail" items="${productDetails}">
        <tr>
            <td>${productDetail.id}</td>
            <td>${productDetail.product.name}</td>
            <td>${productDetail.color}</td>
            <td>${productDetail.size}</td>
            <td>
                <a href="/productdetails/edit/${productDetail.id}">Edit</a>
                <a href="/productdetails/delete/${productDetail.id}" onclick="return confirm('Are you sure?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>