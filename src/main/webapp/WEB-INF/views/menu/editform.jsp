<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>Edit Form</title>

<style>
	h1{
		margin-bottom: 50px;
	}
	body{
		width: 30%;
		margin-left: 35%;
		margin-top: 100px;
		text-align: center;
	}
	.table{
		margin-bottom: 30px;
	}
	#fin{
		margin-left: -50px;
	}
</style>

</head>
<body>

<h1>메뉴 수정</h1>
<form:form commandName="menuVO" method="POST" action="../editok">
	<form:hidden path="id"/>
	<table class="table table-borderless" id="edit">
		<tr><td>이름:</td><td><form:input id="fin" path="name" /></td></tr>
		<tr><td>카테고리:</td><td><form:input id="fin" path="category" /></td></tr>
		<tr><td>가격:</td><td><form:input id="fin" path="cost" /></td></tr>
		<tr><td>물량:</td><td><form:input id="fin" path="stock" /></td></tr>
		<tr><td>판매량:</td><td><form:input id="fin" path="numsold" /></td></tr>
	</table>
	<input type="submit" class="btn btn-info" value="수정하기"/>
	<input type="button" class="btn btn-dark" value="취소하기" onclick="history.back()"/>
</form:form>
</body>
</html>