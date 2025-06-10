<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Order Detail Form</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<h2>${orderDetail.id == null ? 'Add New Order Detail' : 'Edit Order Detail'}</h2>
<form action="/orderdetails" method="post">
    <input type="hidden" name="id" value="${orderDetail.id}"/>
    <label>Order:</label>
    <select name="order.id" required>
        <c:forEach var="order" items="${orders}">
            <option value="${order.id}" ${orderDetail.order.id == order.id ? 'selected' : ''}>${order.id}</option>
        </c:forEach>
    </select><br/>
    <label>Product:</label>
    <select name="product.id" required>
        <c:forEach var="product" items="${products}">
            <option value="${product.id}" ${orderDetail.product.id == product.id ? 'selected' : ''}>${product.name}</option>
        </c:forEach>
    </select><br/>
    <label>Quantity:</label>
    <input type="number" name="quantity" value="${orderDetail.quantity}" required/><br/>
    <label>Unit Price:</label>
    <input type="number" name="unitPrice" value="${orderDetail.unitPrice}" step="0.01" required/><br/>
    <button type="submit">Save</button>
</form>
<a href="/orderdetails">Back to List</a>
</body>
</html>