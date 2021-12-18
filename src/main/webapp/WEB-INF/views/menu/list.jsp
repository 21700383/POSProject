<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
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

<table id="list" width="90%">
<tr>
	<th>ID</th>
	<th>이름</th>
	<th>카테고리</th>
	<th>가격</th>
	<th>남은재고</th>
	<th>판매량</th>
	<th>수정</th>
	<th>삭제</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.id}</td>
		<td>${u.name}</td>
		<td>${u.category}</td>
		<td>${u.cost}</td>
		<td>${u.stock}</td>
		<td>${u.numsold}</td>
		<td><a href="editform/${u.id}">메뉴수정</a></td>
		<td><a href="javascript:delete_ok('${u.id}')">메뉴삭제</a></td>
	</tr>
</c:forEach>
</table>
<br/>
<div class="btn-group">
<button type="button" onclick="location.href='add'">새메뉴추가</button>
<button type="button" onclick="location.href='sales'">매출보기</button>
</div>
</body>
</html>