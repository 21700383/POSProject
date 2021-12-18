<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New post</title>
</head>
<body>

<h1>새 메뉴추가</h1>
<form action="addok" method="post">
	<table id="add">
		<tr><td>이름:</td><td><input type="text" name="name"/></td></tr>
		<tr><td>카테고리:</td><td><select id="category" name="category">
		    <option value="KoTable">KoTable</option>
		    <option value="FriFri">FriFri</option>
		    <option value="GraceGarden">GraceGarden</option>
		    <option value="MixRice">MixRice</option>
  		</select></td></tr>
		<tr><td>가격:</td><td><input type="text" name="cost"/></td></tr>
		<tr><td>물량:</td><td><input type="text" name="stock"/></td></tr>
	</table>
	<button type="button" onclick="location.href='list'">목록보기</button>
	<button type="submit">등록하기</button>
	<button type="reset">리셋하기</button>
</form>

</body>
</html>