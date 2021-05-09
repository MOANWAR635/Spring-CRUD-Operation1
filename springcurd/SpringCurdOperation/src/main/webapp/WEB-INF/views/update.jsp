<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body bgcolor="lightblue">
<center><div style="border: 1px solid; height: 550px; width: 500px; margin-top: 30px; padding-top: 20px;">
<h2>Welcome to user of uploading product page  </h2>

<h1>Change the Product Details </h1>

<form action="${pageContext.request.contextPath }/producthandler" method="post">

<label> Please Enter the name</label>
<input type="text" name="name" placeholder="Please Enter the Id" value="${product.id }"><br><br>

<label> Please Enter the name</label>
<input type="text" name="name" placeholder="Please Enter the Name" value="${product.name }"><br><br>

<label>Please Enter your Description</label>
<textarea name="description" placeholder="Enter your Description" style="height: 200px; width: 400px;" >${product.description }</textarea><br><br>

<label>Please Enter your Price</label>
<input type="text" name="prices" placeholder="Enter your Price " value="${product.prices }"><br><br>
<a  href="${pageContext.request.contextPath }/">back</a><input style="color: orange;" type="submit" value="Add Product">
</div>
</form>
</center>

</body>
</html>