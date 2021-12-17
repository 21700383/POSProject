<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
<style>
</style>
</head>
<body>

<h1>메뉴 수정</h1>
<form:form commandName="menuVO" method="POST" action="../editok">
	<form:hidden path="id"/>
	<table id="edit">
		<tr><td>이름:</td><td><input type="text" name="name"/></td></tr>
		<tr><td>카테고리:</td><td><input type="text" name="category"/></td></tr>
		<tr><td>가격:</td><td><input type="text" name="cost"/></td></tr>
		<tr><td>물량:</td><td><input type="text" name="stock"/></td></tr>
	</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history.back()"/>
</form:form>
</body>
</html>