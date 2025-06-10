<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Order Form</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<h2>${order.id == null ? 'Add New Order' : 'Edit Order'}</h2>
<form action="/orders" method="post">
    <input type="hidden" name="id" value="${order.id}"/>
    <label>Customer:</label>
    <select name="customer.id" required>
        <c:forEach var="customer" items="${customers}">
            <option value="${customer.id}" ${order.customer.id == customer.id ? 'selected' : ''}>${customer.name}</option>
        </c:forEach>
    </select><br/>
    <label>Seller:</label>
    <select name="seller.id" required>
        <c:forEach var="seller" items="${sellers}">
            <option value="${seller.id}" ${order.seller.id == seller.id ? 'selected' : ''}>${seller.name}</option>
        </c:forEach>
    </select><br/>
    <label>Order Date:</label>
    <input type="datetime-local" name="orderDate" value="${order.orderDate}" required/><br/>
    <label>Status:</label>
    <select name="status" required>
        <option value="pending" ${order.status == 'pending' ? 'selected' : ''}>Pending</option>
        <option value="completed" ${order.status == 'completed' ? 'selected' : ''}>Completed</option>
        <option value="cancelled" ${order.status == 'cancelled' ? 'selected' : ''}>Cancelled</option>
    </select><br/>
    <label>Total Amount:</label>
    <input type="number" name="totalAmount" value="${order.totalAmount}" step="0.01" required/><br/>
    <button type="submit">Save</button>
</form>
<a href="/orders">Back to List</a>
</body>
</html>