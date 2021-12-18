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

<title>일매출</title>

<style>
	h1{
		margin-bottom: 50px;
	}
	body{
		width: 50%;
		margin-left: 25%;
		margin-top: 50px;
		text-align: center;
	}
	.table{
		margin-bottom: 30px;
	}

	mark{
		width: 200px;
		font-size: 30px;
		font-weight: bold;
		background-color: lightgray;
	}
	button{
		margin-top: 50px;
	}
</style>

</head>
<body>
	<h1>하루 매출</h1>

	<table class="table" id="list" width="90%">
		<thead class="thead thead-dark">
		<tr>
			<th>이름</th>
			<th>가격</th>
			<th>판매량</th>
			<th>매출</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.name}</td>
				<td>${u.cost}</td>
				<td>${u.numsold}</td>
				<td>${u.sales}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<br/>
	<mark>총 매출: <c:out value='${total_sales}' /></mark><br>
	<button class="btn btn-info" type="button" onclick="history.back()">돌아가기</button>
</body>
</html>