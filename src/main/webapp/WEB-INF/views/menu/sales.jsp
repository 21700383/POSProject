<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일매출</title>
<style>
#list {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#list td, #list th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#list tr:nth-child(even) {
	background-color: #f2f2f2;
}

#list tr:hover {
	background-color: #ddd;
}

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
	<h1>하루 매출</h1>

	<table id="list" width="90%">
		<tr>
			<th>이름</th>
			<th>가격</th>
			<th>판매량</th>
			<th>매출</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.name}</td>
				<td>${u.cost}</td>
				<td>${u.numsold}</td>
				<td>${u.sales}</td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<p>
		<b>총 매출: </b><c:out value='${total_sales}' />
	</p>
	<button type="button" onclick="history.back()">돌아가기</button>
</body>
</html>