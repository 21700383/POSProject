<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
img, label {
	display: inline-block;
}
label {
	margin-left: -20px;
	width: 130px;
	font-family: "NotoSerifWeb","Noto Serif CJK Kr","Apple SD Gothic Neo","Malgun Gothic",sans-serif;
}
button {
	width: 100px;
	font-size: 15px
}
div{
	margin-top: 5px;
	margin-bottom: 5px;
}
input{
	width: 14%;
	margin-left: -20px;
}
</style>
</head>
<body>
	<div style='width: 100%; text-align: center; padding-top: 100px'>
		<img src="../resources/img/login.png" height="300">
		<form method="post" action="loginOk"><br>
			<div>
				<label class="font-face">User ID: </label><input type='text' name='userid' />
			</div>
			<div>
				<label>Password: </label><input type='password' name='userpw' />
			</div><br>
			<button type='submit' class="btn btn-outline-success">login</button>
		</form>
	</div>
</body>
</html>