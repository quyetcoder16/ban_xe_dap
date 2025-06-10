<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Order List</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<h2>Order List</h2>
<a href="/orders/new">Add New Order</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Customer</th>
        <th>Seller</th>
        <th>Order Date</th>
        <th>Status</th>
        <th>Total Amount</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="order" items="${orders}">
        <tr>
            <td>${order.id}</td>
            <td>${order.customer.name}</td>
            <td>${order.seller.name}</td>
            <td>${order.orderDate}</td>
            <td>${order.status}</td>
            <td>${order.totalAmount}</td>
            <td>
                <a href="/orders/edit/${order.id}">Edit</a>
                <a href="/orders/delete/${order.id}" onclick="return confirm('Are you sure?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>