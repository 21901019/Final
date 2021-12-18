<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Form</title>
<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<h1>Join Form</h1>
<form action="../joinok" method="post">
<input type="hidden" name="seq" value="${u.getSeq()}"/>
<input type="hidden" name="now" value="${u.getNow()}"/>
<table>
<tr><td colspan="2">
<input type="submit" value="join" class="btn btn-outline-warning"/>
<input type="button" value="Cancel" onclick="history.back()" class="btn btn-outline-danger"/></td></tr>
</table>
</form>
</body>
</html>