<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Product Detail Form</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<h2>${productDetail.id == null ? 'Add New Product Detail' : 'Edit Product Detail'}</h2>
<form action="/productdetails" method="post">
    <input type="hidden" name="id" value="${productDetail.id}"/>
    <label>Product:</label>
    <select name="product.id" required>
        <c:forEach var="product" items="${products}">
            <option value="${product.id}" ${productDetail.product.id == product.id ? 'selected' : ''}>${product.name}</option>
        </c:forEach>
    </select><br/>
    <label>Color:</label>
    <input type="text" name="color" value="${productDetail.color}" required/><br/>
    <label>Size:</label>
    <input type="text" name="size" value="${productDetail.size}" required/><br/>
    <button type="submit">Save</button>
</form>
<a href="/productdetails">Back to List</a>
</body>
</html>