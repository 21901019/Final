<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
img, label {
	display: inline-block;
}

label {
	width: 130px
}

button {
	background-color: blue;
	color: white;
	font-size: 15px
}
</style>
</head>
<body>
	<div style='width: 100%; text-align: center; padding-top: 100px'>
		<form method="post" action="loginOk">
			<div>
				<label>User ID: </label><input type='text' name='userid' />
			</div>
			<div>
				<label>Password: </label> <input type='password' name='password' />
			</div>
			<button type='submit' class="btn btn-outline-primary">login</button>
		</form>
	</div>
</body>
</html>