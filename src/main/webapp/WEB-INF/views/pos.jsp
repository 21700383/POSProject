<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pos</title>
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
</head>
<body>
	<h1>pos</h1>
	<table id="list" width="90%">
		<tr>
			<th>이름</th>
			<th>카테고리</th>
			<th>가격</th>
			<th>남은재고</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.name}</td>
				<td>${u.category}</td>
				<td>${u.cost}</td>
				<td>${u.stock}</td>
			</tr>
		</c:forEach>
	</table>
	<button type="button" onclick="location.href='menu/list'">리스트</button>
</body>
</html>