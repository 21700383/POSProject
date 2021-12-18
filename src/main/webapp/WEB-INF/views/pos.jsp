<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>pos</title>

<style>
	body {
		width: 60%;
		margin-left: 20%;
		margin-top: 100px;
	}
	
	h1 {
		font-size: 50px;
		text-align: center;
		margin-bottom: 40px;
	}
	
	table {
		text-align: center;
	}
	
	.btn-group {
		float: right;
		margin-right: 20px;
	}
	button{
		float:right;
		width: 100px;
	}
</style>

</head>
<body>
	<h1>Menu</h1>
	<table class="table" id="list" width="90%">
		<thead class="thead thead-light">
		<tr>
			<th>이름</th>
			<th>카테고리</th>
			<th>가격</th>
			<th>남은재고</th>
			<th>주문</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.name}</td>
				<td>${u.category}</td>
				<td>${u.cost}</td>
				<td>${u.stock}</td>
				<td><a href="updatebyone/${u.id}">주문</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<button class="btn btn-info" type="button" onclick="location.href='menu/list'">관리</button>
</body>
</html>