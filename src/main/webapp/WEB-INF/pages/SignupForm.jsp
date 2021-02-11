<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<style>
.myform{
  background:#fff;
  padding:30px;
  border-radius:10px;
  box-shadow:0px 1px 1px 3px #efefef ;
  
  }
.error{color:red;} 
</style>
</head>
<body>
<div class="container mt-2 ">
  <div class = "row justify-content-center">
   <div class = "col-xs-2  myform ">
<form:form action="process" modelAttribute="user">
	<div class="form-group">
    <label for="exampleInputEmail1">User Name</label>
    <form:input type="text" path="name" class="form-control" placeholder="User Name"/>
    <form:errors path="name" cssClass="error"/>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">password</label>
    <form:password path="password" class="form-control" placeholder="User Name"/>
    <form:errors path="password" cssClass="error"/>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">User Email</label>
    <form:input path="email" class="form-control" placeholder="User Name"/>
    <form:errors path="email" cssClass="error"/>
  </div>
	<input type="submit" class="btn btn-primary" value="submit">


</form:form>
</div>
</div>
</div>
</body>
</html>