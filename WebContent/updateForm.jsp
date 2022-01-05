<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao" %>

<%
	//수정하고자 하는 리스트의 파라미터(personId) 받기
	int personId = Integer.parseInt(request.getParameter("id"));
	
	//PhoneDao에 있는 getPerson 메소드 사용을 위해 객체 생성
	PhoneDao phoneDao = new PhoneDao();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.hidden{
	display:none;
	}
</style>
</head>
<body>
	<h1>[Phonebook1]</h1>

	<h2>전화번호 수정폼</h2>
	
	<p>전화번호 수정폼입니다. 수정을 원하는 항목을 새로 기입해주세요.</p>

	<!-- value: input 요소의 초기값 -->
	<form action="./update.jsp" method="get">
		이름(name): <input type="text" name="name" value="<%= phoneDao.getPerson(personId).getName() %>"> <br>
		핸드폰(hp): <input type="text" name="hp" value="<%= phoneDao.getPerson(personId).getHp() %>"> <br>
		회사(company): <input type="text" name="company" value="<%= phoneDao.getPerson(personId).getCompany() %>"> <br>
		<div class="hidden"> 코드(id):</div> <input type="hidden" name="id" value="<%= phoneDao.getPerson(personId).getPersonId() %>"> <br>
		<button type="submit">수정</button>
	</form>
</body>
</html>