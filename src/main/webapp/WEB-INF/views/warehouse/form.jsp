<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Warehouse Form</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<h2>${warehouse.id == null ? 'Add New Warehouse' : 'Edit Warehouse'}</h2>
<form action="/warehouses" method="post">
    <input type="hidden" name="id" value="${warehouse.id}"/>
    <label>Name:</label>
    <input type="text" name="name" value="${warehouse.name}" required/><br/>
    <label>Location:</label>
    <input type="text" name="location" value="${warehouse.location}" required/><br/>
    <label>Capacity:</label>
    <input type="number" name="capacity" value="${warehouse.capacity}" required/><br/>
    <button type="submit">Save</button>
</form>
<a href="/warehouses">Back to List</a>
</body>
</html>