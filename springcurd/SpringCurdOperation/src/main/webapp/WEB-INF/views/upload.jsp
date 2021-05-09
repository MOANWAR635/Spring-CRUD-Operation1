<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body bgcolor="pink">
<center><div style="border: 1px solid; height: 500px; width: 500px; margin-top: 50px; padding-top: 40px;">
<h2>Welcome to user of uploading product page  </h2>

<h1>Fill the Product Details </h1>

<form action="producthandler" method="post">

<label> Please Enter the name</label>
<input type="text" name="name" placeholder="Please Enter the Name"><br><br>

<label>Please Enter your Description</label>
<textarea name="description" placeholder="Enter your Description" style="height: 200px; width: 400px;"></textarea><br><br>

<label>Please Enter your Price</label>
<input type="text" name="prices" placeholder="Enter your Price "><br><br>
<a  href="${pageContext.request.contextPath }/">back</a><input style="color: blue;" type="submit" value="Add Product">
</div>
</form>
</center>

</body>
</html>