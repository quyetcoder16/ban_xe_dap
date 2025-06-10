<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Form</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<h2>${customer.id == null ? 'Add New Customer' : 'Edit Customer'}</h2>
<form action="/customers" method="post">
    <input type="hidden" name="id" value="${customer.id}"/>
    <label>Username:</label>
    <input type="text" name="username" value="${customer.username}" required/><br/>
    <label>Password:</label>
    <input type="password" name="password" value="${customer.password}" required/><br/>
    <label>Name:</label>
    <input type="text" name="name" value="${customer.name}" required/><br/>
    <label>Email:</label>
    <input type="email" name="email" value="${customer.email}" required/><br/>
    <label>Phone:</label>
    <input type="text" name="phone" value="${customer.phone}" required/><br/>
    <label>Address:</label>
    <input type="text" name="address" value="${customer.address}" required/><br/>
    <button type="submit">Save</button>
</form>
<a href="/customers">Back to List</a>
</body>
</html>