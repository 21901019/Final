<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table>
<tr><td>id:</td><td><input type="text" name="id"/></td></tr>
<tr><td>password:</td><td><input type="password" name="password"/></td></tr>
<tr><td>time(ex: 4/12 15시 00분):</td><td><input type="text" name="time"/></td></tr>
<tr><td>place:</td><td><input type="text" name="place"/></td></tr>
<tr><td>phone:</td><td><input type="text" name="phone"/></td></tr>
<tr><td>max people:</td><td><input type="text" name="target"/></td></tr>
<tr><td>kind:</td><td>
<select name='kind'>
<option value='택시'>택시</option>
<option value='카풀'>카풀</option>
</select>
</td></tr>

<tr><td><a href="list">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
</table>
</form>

</body>
</html>