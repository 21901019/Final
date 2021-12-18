<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.mycom.mapp.board.BoardDAO,com.mycom.mapp.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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
	function deleteok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deletepost.jsp?id=' + id;
	}
</script>
</head>
<body>
<h1>자유게시판</h1>

<table id="list" width="90%">
<tr>
	<th>Seq</th>
	<th>Id</th>
	<th>Time</th>
	<th>Place</th>
	<th>Phone</th>
	<th>Max</th>
	<th>now</th>
	<th>kind</th>
	<th>Regdate</th>
	<th></th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getSeq()}</td>
		<td>${u.getId()}</td>
		<td>${u.getTime()}</td>
		<td>${u.getPlace()}</td>
		<td>${u.getPhone()}</td>
		<td>${u.getTarget()}</td>
		<td>${u.getNow()}</td>
		<td>${u.getKind()}</td>
		<td>${u.getRegdate()}</td>
		<td>
			<button type="button" onclick="location.href='joinform/${u.getSeq()}'" class="btn btn-outline-warning">Join</button>
			<button type="button" onclick="location.href='editform/${u.getSeq()}'" class="btn btn-outline-primary">Edit</button>
			<button type="button" onclick="javascript:delete_ok('${u.getSeq()}')" class="btn btn-outline-danger">Delete</button>
		</td>
	</tr>
</c:forEach>
</table>
<br/><a href="add">Add New Post</a>
</body>
</html>