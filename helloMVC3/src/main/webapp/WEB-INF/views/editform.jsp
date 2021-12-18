<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.mycom.mapp.board.BoardDAO,com.mycom.mapp.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>



<h1>Edit Form</h1>
<form action="../editok" method="post">
<input type="hidden" name="seq" value="${u.getSeq()}"/>
<table>
<tr><td>time(ex: 4/12 15시 00분):</td><td><input type="text" name="time" value="${u.getTime()}"/></td></tr>
<tr><td>place:</td><td><input type="text" name="place" value="${u.getPlace()}"/></td></tr>
<tr><td>phone:</td><td><input type="text" name="phone" value="${u.getPhone()}" /></td></tr>
<tr><td>max people:</td><td><input type="text" name="target" value="${u.getTarget()}" /></td></tr>
<tr><td>kind:</td><td>
<select name='kind'>
<option value='택시'>택시</option>
<option value='카풀'>카풀</option>
</select>
</td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post" class="btn btn-outline-warning"/>
<input type="button" value="Cancel" onclick="history.back()" class="btn btn-outline-danger"/></td></tr>
</table>
</form>

</body>
</html>