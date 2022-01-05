<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>[Phonebook1]</h1>

	<h2>전화번호 수정폼</h2>
	
	<p>전화번호 수정폼입니다. 수정을 원하는 항목을 새로 기입해주세요.</p>

	<form action="./update.jsp" method="get">
		이름(name): <input type="text" name="name" value=""> <br>
		핸드폰(hp): <input type="text" name="hp" value=""> <br>
		회사(company): <input type="text" name="company" value=""> <br>
		코드(id): <input type="text" name="id" value=""> <br>
		<button type="submit">수정</button>
	</form>
</body>
</html>