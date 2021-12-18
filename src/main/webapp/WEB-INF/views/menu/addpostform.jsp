<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>New post</title>

<style>
	h1{
		margin-bottom: 50px;
	}
	form{
		width: 30%;
		margin-left: 35%;
		margin-top: 100px;
		text-align: center;
	}
	input, select{
		width: 100%;
		margin-left: -100px;
	}
	.btn-group{
		margin-left: 100px;
		margin-right: 10px;
	}
	.table{
		margin-bottom: 30px;
	}
</style>

</head>
<body>


<form action="addok" method="post">
	<h1>메뉴 추가</h1>
	<table class="table table-borderless" id="add">
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
	<div class="btn-group">
		<button class="btn btn-secondary" type="submit"> 등록 </button>
		<button class="btn btn-secondary" type="reset"> reset </button>
	</div>
	<button class="btn btn-light" type="button" onclick="location.href='list'"> list 보기 </button>
</form>

</body>
</html>