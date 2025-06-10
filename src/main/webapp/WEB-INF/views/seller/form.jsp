<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Seller Form</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<h2>${seller.id == null ? 'Add New Seller' : 'Edit Seller'}</h2>
<form action="/sellers" method="post">
    <input type="hidden" name="id" value="${seller.id}"/>
    <label>Username:</label>
    <input type="text" name="username" value="${seller.username}" required/><br/>
    <label>Password:</label>
    <input type="password" name="password" value="${seller.password}" required/><br/>
    <label>Name:</label>
    <input type="text" name="name" value="${seller.name}" required/><br/>
    <label>Email:</label>
    <input type="email" name="email" value="${seller.email}" required/><br/>
    <label>Phone:</label>
    <input type="text" name="phone" value="${seller.phone}" required/><br/>
    <label>Address:</label>
    <input type="text" name="address" value="${seller.address}" required/><br/>
    <label>Warehouse:</label>
    <select name="warehouse.id">
        <option value="">Select Warehouse</option>
        <c:forEach var="warehouse" items="${warehouses}">
            <option value="${warehouse.id}" ${seller.warehouse.id == warehouse.id ? 'selected' : ''}>${warehouse.name}</option>
        </c:forEach>
    </select><br/>
    <button type="submit">Save</button>
</form>
<a href="/sellers">Back to List</a>
</body>
</html>