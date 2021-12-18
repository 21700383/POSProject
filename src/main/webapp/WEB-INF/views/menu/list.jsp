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

<title>list</title>
<style>
	body{
		width: 80%;
		margin-left: 10%;
		margin-top: 100px;
	}
	h1{
		text-align: center;
		margin-bottom: 40px;
	}
	table{
		text-align: center;
	}
	.btn-group{
		float: right;
		margin-right: 20px;
	}

</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>

<body>
<h1>메뉴 목록</h1>

<table class="table" id="list" width="90%">
<thead class="thead-light">
	<tr>
		<th>ID</th>
		<th>이름</th>
		<th>카테고리</th>
		<th>가격</th>
		<th>남은재고</th>
		<th>판매량</th>
		<th>관리</th>
	</tr>
</thead>
<tbody>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.id}</td>
		<td>${u.name}</td>
		<td>${u.category}</td>
		<td>${u.cost}</td>
		<td>${u.stock}</td>
		<td>${u.numsold}</td>
		<td><button type="button" class="btn btn-info" onclick="location.href='editform/${u.id}'">수정</button>
			<button type="button" class="btn btn-danger" onclick="location.href='javascript:delete_ok(${u.id})'">삭제</button></td>
	</tr>
</c:forEach>
</tbody>
</table>
<br/>
<div class="btn-group">
	<button type="button" class="btn btn-dark" onclick="location.href='add'">새메뉴추가</button>
	<button type="button" class="btn btn-dark" onclick="location.href='sales'">매출보기</button>
</div>
</body>
</html>