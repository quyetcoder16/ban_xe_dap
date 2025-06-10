<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Order Detail List</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<h2>Order Detail List</h2>
<a href="/orderdetails/new">Add New Order Detail</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Order</th>
        <th>Product</th>
        <th>Quantity</th>
        <th>Unit Price</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="orderDetail" items="${orderDetails}">
        <tr>
            <td>${orderDetail.id}</td>
            <td>${orderDetail.order.id}</td>
            <td>${orderDetail.product.name}</td>
            <td>${orderDetail.quantity}</td>
            <td>${orderDetail.unitPrice}</td>
            <td>
                <a href="/orderdetails/edit/${orderDetail.id}">Edit</a>
                <a href="/orderdetails/delete/${orderDetail.id}" onclick="return confirm('Are you sure?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>