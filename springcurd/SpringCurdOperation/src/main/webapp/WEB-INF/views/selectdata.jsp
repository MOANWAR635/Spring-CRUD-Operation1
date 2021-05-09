<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<%@include file="./base.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">

table,tr,th,td
{
	border: 1px solid green;
	border-spacing: 0px;
}
table,tr {
	width: 700px;
	height: 50px;
}

</style>

</head>
<body>
<center><h2>We can see the dynamic data from database</h2>
<table>
<thead>
<tr>

<th scope="col" style="color: red;">Id</th>
<th scope="col" style="color: red;">Product Name</th>
<th scope="col" style="color: red;">Description</th>
<th scope="col" style="color: red;">Price</th>
<th scope="col" style="color: red;" colspan="2">Action</th>
</tr>
</thead>
<tbody>
<c:forEach items="${product }" var="p">
<tr>
<th scope="row">P Id:${p.id}</th>
<td>${p.name}</td>
<td>${p.description}</td>
<td>${p.prices}</td>
<td><a href="delete/${p.id }" style="color: blue; text-decoration: none;">Delete</a></td>
<td><a href="Update/${p.id }" style="color: blue; text-decoration: none;">Update</a></td>
</tr>
</c:forEach>
</tbody>
</table><br><br>
<a href="product" style="color: blue; text-decoration: none;">Add Product</a>
</center>
</body>
</html>